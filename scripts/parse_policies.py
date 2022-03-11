import json
import logging
import os
import sys
from logging import FileHandler, Formatter, StreamHandler

import yaml
from lxml import etree
from lxml.etree import Comment
from lxml.etree import XMLParser
from lxml.etree import XMLSyntaxError

recovering_parser = etree.XMLParser(recover=True)

log = logging.getLogger("parse_policies")
log.setLevel(logging.DEBUG)

fmt = Formatter('%(levelname)s - %(asctime)s - %(message)s')

sh = StreamHandler()
sh.setFormatter(fmt)
sh.setLevel(logging.WARNING)

fh = FileHandler("parse_policies.log")
fh.setFormatter(fmt)
fh.setLevel(logging.DEBUG)

log.addHandler(sh)
log.addHandler(fh)

def parse_policies(policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"):
    """
    Parse policy info from admx/adml files
    """
    log.info(f"Parsing policies in {policy_path} ...")
    all_policies = []

    admx_files = [f for f in os.listdir(policy_path) if f.endswith(".admx")]

    for admx_ in admx_files:
        log.info(f"Scanning {admx_} ...")
        try:
            admx_tree = etree.parse(
                os.path.join(policy_path, admx_), parser=recovering_parser
            )
        except XMLSyntaxError as e:
            log.error(f"{e} for {admx_}. Skipping...")
            continue
        admx_root = admx_tree.getroot()

        adml_path = os.path.join(
            policy_path, adml_language, os.path.splitext(admx_)[0] + ".adml"
        )
        if os.path.exists(adml_path):
            adml_tree = etree.parse(adml_path, parser=recovering_parser)
            adml_root = adml_tree.getroot()
        else:
            log.error(f"adml not found at {adml_path}")
            adml_tree = None

        policies = [
            child
            for child in admx_root
            if child.tag is not Comment and child.tag.endswith("policies")
        ]
        if policies:
            policies = policies[0]
        else:
            log.error(f"No policies found for {admx_}. Skipping...")
            continue
        for policy in policies:
            if policy.tag is Comment:
                continue
            policy_info = {
                "id": policy.attrib["name"],
                "class": policy.attrib["class"],
                "elements": [],
                "help": "",
            }

            log.info(f"Extracting info from {policy_info['id']} policy ...")

            if adml_tree:
                resources = [
                    child
                    for child in adml_root
                    if child.tag is not Comment and child.tag.endswith("resources")
                ][0]
                string_table = [
                    child
                    for child in resources
                    if child.tag is not Comment and child.tag.endswith("stringTable")
                ][0]
                string_table = [
                    elem for elem in string_table if elem.tag is not Comment
                ]
                policy_name = list(
                    filter(
                        lambda string: string.attrib["id"] == policy_info["id"],
                        string_table,
                    )
                )
                if policy_name:
                    policy_info["name"] = policy_name[0].text
                else:
                    log.warning(f"policy name not found for {policy_info['id']}")
                    log.debug(f"trying known special cases ...")
                    if (
                        policy_info["id"]
                        == "AppCompatTurnOffProgramCompatibilityAssistant_1"
                        or policy_info["id"]
                        == "AppCompatTurnOffProgramCompatibilityAssistant_2"
                    ):
                        policy_id = policy_info["id"].split("_")[0]
                        policy_name = list(
                            filter(
                                lambda string: string.attrib["id"] == policy_id,
                                string_table,
                            )
                        )
                        policy_info["name"] = policy_name[0].text

                policy_help = list(
                    filter(
                        lambda string: string.attrib["id"]
                        == f"{policy_info['id']}_Help",
                        string_table,
                    )
                )
                if policy_help:
                    log.debug("Found _Help")
                    policy_help = policy_help[0]
                    policy_info["help"] = policy_help.text
                else:
                    log.debug("Help not found, searching for _explain")
                    policy_help = list(
                        filter(
                            lambda string: string.attrib["id"]
                            == f"{policy_info['id']}_explain",
                            string_table,
                        )
                    )
                    if policy_help:
                        policy_info["help"] = policy_help[0].text
                        log.debug("_explain found")
                    else:
                        log.debug("No _Help or _explain found")

            elements = [
                child
                for child in policy
                if child.tag is not Comment and child.tag.endswith("elements")
            ]
            if elements:
                elements = elements[0]
                log.info("Scanning elements ...")
                log.info(f"{len(elements)} found.")
                for elem in elements:
                    if elem.tag is Comment:
                        continue
                    element_info = {
                        "attrib": dict(elem.attrib),
                        "type": elem.tag.split("}")[-1],
                    }
                    policy_info["elements"].append(element_info)
            else:
                log.info("No elements found.")

            all_policies.append(policy_info)
    return all_policies


def generate_sls(policies, output_dir):
    """
    Generate sls templates for policies
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for policy in policies:
        log.info(f"Generating sls for {policy['id']} policy")
        sls = {
            policy.get("name", policy["id"]): {
                "lgpo.set": [
                    {
                        "setting": {
                            element["attrib"]["id"]: f"<{element['type']}>"
                            for element in policy["elements"]
                        }
                    },
                    {"policy_class": policy["class"]},
                ]
            }
        }
        if policy["class"] == "Machine":
            sub_dir = "Computer"
        elif policy["class"] == "User":
            sub_dir = "User"
        else:
            log.warning(f"unusual policy class: {policy['class']}")
            sub_dir = policy["class"]

        if not os.path.exists(os.path.join(output_dir, sub_dir)):
            os.mkdir(os.path.join(output_dir, sub_dir))

        with open(
            os.path.join(output_dir, sub_dir, policy["id"] + ".sls"), "w"
        ) as sls_file:
            yaml.dump(sls, sls_file)

        if policy["help"]:
            # write help section
            with open(
                os.path.join(output_dir, sub_dir, policy["id"] + ".sls"), "r+", encoding="utf-8"
            ) as sls_file:
                sls_contents = sls_file.read()
                sls_file.seek(0)
                help_split = policy["help"].split("\n")
                if help_split:
                    comment_help_split = []
                    for line in help_split:
                        comment_help_split.append(f"# {line}")
                    yaml_help = ""
                    for line in comment_help_split:
                        yaml_help += line + "\n"
                    try:
                        sls_file.write(yaml_help + sls_contents)
                    except UnicodeEncodeError as e:
                        import ipdb; ipdb.set_trace()
                        pass


def main(
    output_path, policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"
):
    all_policies = parse_policies(policy_path=policy_path, adml_language=adml_language)
    generate_sls(all_policies, output_path)


if __name__ == "__main__":
    print(sys.argv[1])
    main(sys.argv[1])
