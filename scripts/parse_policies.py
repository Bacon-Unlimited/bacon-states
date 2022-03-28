import json
import logging
import os
import sys
import urllib.parse
from logging import FileHandler, Formatter, StreamHandler

import yaml
from lxml import etree
from lxml.etree import Comment
from lxml.etree import XMLParser
from lxml.etree import XMLSyntaxError

recovering_parser = etree.XMLParser(recover=True)

log = logging.getLogger("parse_policies")
log.setLevel(logging.DEBUG)

fmt = Formatter("%(levelname)s - %(asctime)s - %(message)s")

sh = StreamHandler()
sh.setFormatter(fmt)
sh.setLevel(logging.WARNING)

fh = FileHandler("parse_policies.log")
fh.setFormatter(fmt)
fh.setLevel(logging.DEBUG)

log.addHandler(sh)
log.addHandler(fh)


REF_LOOKUP = {
    "windows": "Windows",
    "logon": "WinLogon",
    "devinst": "DeviceInstallation",
    "sensors": "Sensors",
    "mmc": "MMC",
    "msched": "msched",
    "wer": "ErrorReporting",
    "terminalserver": "TerminalServer",
    "backup": "WindowsBackup",
    "inetres": "inetres",
    "netcon": "NetworkConnections",
}


def _parse_admx_adml(
    name, policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"
):
    """
    Helper function
    Parse the admx/adml pair for a given filename (without extension)
    Returns (categories, string_table)
    """
    admx_tree = etree.parse(
        os.path.join(policy_path, name + ".admx"), parser=recovering_parser
    )
    admx_root = admx_tree.getroot()

    adml_path = os.path.join(policy_path, adml_language, name + ".adml")
    adml_tree = etree.parse(adml_path, parser=recovering_parser)
    adml_root = adml_tree.getroot()

    categories = [
        child
        for child in admx_root
        if child.tag is not Comment and child.tag.endswith("categories")
    ]
    if categories:
        categories = categories[0]
        categories = [child for child in categories if child.tag is not Comment]
    else:
        log.info(f"No categories found in {name + '.admx'}")

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
    string_table = [elem for elem in string_table if elem.tag is not Comment]
    return (categories, string_table)


def parse_policies(policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"):
    """
    Parse policy info from admx/adml files
    """
    log.debug(f"Parsing policies in {policy_path} ...")
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
        adml_tree = etree.parse(adml_path, parser=recovering_parser)
        adml_root = adml_tree.getroot()

        policies = [
            child
            for child in admx_root
            if child.tag is not Comment and child.tag.endswith("policies")
        ]
        if policies:
            policies = policies[0]
        else:
            log.warning(f"No policies found in {admx_}")
            continue

        for policy in policies:
            current_scope = os.path.splitext(admx_)[0]
            categories, string_table = _parse_admx_adml(current_scope)
            if policy.tag is Comment:
                continue
            policy_info = {
                "attrib": dict(policy.attrib),
                "id": policy.attrib["name"],
                "class": policy.attrib["class"],
                "elements": [],
                "help": "",
                "path": "",
            }
            log.info(f"Extracting info for {policy_info['id']} policy ...")

            display_name_ref = policy_info["attrib"]["displayName"].split(".")[-1][:-1]
            policy_name = list(
                filter(
                    lambda string: string.attrib["id"] == display_name_ref,
                    string_table,
                )
            )
            if policy_name:
                policy_info["name"] = policy_name[0].text
            else:
                log.warning(f"policy name not found for {policy_info['id']}")

            explain_text_ref = policy_info["attrib"]["explainText"].split(".")[-1][:-1]
            policy_help = list(
                filter(
                    lambda string: string.attrib["id"] == explain_text_ref,
                    string_table,
                )
            )
            if policy_help:
                log.debug(f"Found help for {policy_info['id']}")
                policy_help = policy_help[0]
                policy_info["help"] = policy_help.text
            else:
                log.info(f"No Help found for {policy_info['id']}")

            elements = [
                child
                for child in policy
                if child.tag is not Comment and child.tag.endswith("elements")
            ]
            if elements:
                elements = elements[0]
                log.debug("Scanning elements ...")
                log.debug(f"{len(elements)} found.")
                for elem in elements:
                    if elem.tag is Comment:
                        continue
                    element_info = {
                        "attrib": dict(elem.attrib),
                        "type": elem.tag.split("}")[-1],
                    }
                    policy_info["elements"].append(element_info)
            else:
                log.debug("No elements found.")

            supported_on = [
                child
                for child in policy
                if child.tag is not Comment and child.tag.endswith("supportedOn")
            ]
            if supported_on:
                policy_info["supportedOn"] = supported_on[0].attrib["ref"]
            else:
                log.warning(f"supportedOn not found for {policy_info['id']} policy")

            parent_category = [
                child
                for child in policy
                if child.tag is not Comment and child.tag.endswith("parentCategory")
            ]
            if parent_category:
                # current scope needs to be updated while parsing for category chain
                current_scope = os.path.splitext(admx_)[0]

                parent_category_ref = parent_category[0].attrib["ref"]
                log.debug(f"parent_category_ref: {parent_category_ref}")
                category_chain = []
                while True:
                    log.debug(f"trace - parent_category_ref: {parent_category_ref}")
                    if ":" in parent_category_ref:
                        # refers to another file
                        ref, name = parent_category_ref.split(":")
                        # lookup known refs to files
                        if REF_LOOKUP.get(ref):
                            current_scope = REF_LOOKUP.get(ref)
                            categories, string_table = _parse_admx_adml(current_scope)
                            category = [
                                child
                                for child in categories
                                if child.attrib["name"] == name
                            ][0]
                            display_name_ref = category.attrib["displayName"].split(
                                "."
                            )[-1][:-1]
                            display_name = [
                                child
                                for child in string_table
                                if child.attrib["id"] == display_name_ref
                            ]
                            category_chain.append(display_name[0].text)
                            parent_category = [
                                child
                                for child in category
                                if child.tag.endswith("parentCategory")
                            ]
                            if parent_category:
                                parent_category_ref = parent_category[0].attrib["ref"]
                            else:
                                break
                        else:
                            raise ValueError(f"Unkown ref: {ref}")
                    else:
                        categories, string_table = _parse_admx_adml(current_scope)
                        # lookup match in categories for this admx
                        category = [
                            child
                            for child in categories
                            if child.attrib["name"] == parent_category_ref
                        ]
                        if category:
                            category = category[0]
                        else:
                            log.warning(
                                f"category match NOT found for {parent_category_ref} for policy {policy_info['id']} in {admx_}"
                            )
                            category_chain.append("")
                            break

                        # match categtory to display name in adml
                        display_name_ref = category.attrib["displayName"].split(".")[
                            -1
                        ][:-1]
                        display_name = [
                            child
                            for child in string_table
                            if child.attrib["id"] == display_name_ref
                        ]
                        category_chain.append(display_name[0].text)

                        # get parentCategory for current category
                        parent_category = [
                            child
                            for child in category
                            if child.tag.endswith("parentCategory")
                        ]
                        if parent_category:
                            parent_category_ref = parent_category[0].attrib["ref"]
                        else:
                            break
                policy_info["path"] = os.path.join(*reversed(category_chain))
            else:
                log.warning(f"parentCategory not found for {policy_info['id']} policy")
            all_policies.append(policy_info)
    with open("all_policies.json", "w") as json_file:
        json.dump(all_policies, json_file, indent=2)
    return all_policies


def generate_sls(policies, output_dir):
    """
    Generate sls templates for policies
    """
    if not os.path.exists(output_dir):
        os.makedirs(output_dir)

    for policy in policies:
        log.info(f"Generating sls for {policy['id']} policy")
        if policy["class"] in ["User", "Machine"]:
            sls = {
                policy.get("name", policy["id"]): {
                    "lgpo.set": [
                        {"name": policy["id"]},
                        {
                            "setting": {
                                element["attrib"][
                                    "id"
                                ]: f"{element['type']}-placeholder"
                                if not element["type"] == "list"
                                else ["placeholder1", "placeholder2"]
                                for element in policy["elements"]
                            }
                            if policy["elements"]
                            else "Enabled"
                        },
                        {"policy_class": policy["class"]},
                    ]
                }
            }
            sub_dir_sls = [
                (
                    os.path.join(
                        "Computer" if policy["class"] == "Machine" else "User",
                        policy["path"].replace(">", "-"),
                    ),
                    sls,
                )
            ]
        elif policy["class"] == "Both":
            sls_machine = {
                policy.get("name", policy["id"]): {
                    "lgpo.set": [
                        {"name": policy["id"]},
                        {
                            "setting": {
                                element["attrib"][
                                    "id"
                                ]: f"{element['type']}-placeholder"
                                if not element["type"] == "list"
                                else ["placeholder1", "placeholder2"]
                                for element in policy["elements"]
                            }
                            if policy["elements"]
                            else "Enabled"
                        },
                        {"policy_class": "Machine"},
                    ]
                }
            }
            sls_user = {
                policy.get("name", policy["id"]): {
                    "lgpo.set": [
                        {"name": policy["id"]},
                        {
                            "setting": {
                                element["attrib"][
                                    "id"
                                ]: f"{element['type']}-placeholder"
                                if not element["type"] == "list"
                                else ["placeholder1", "placeholder2"]
                                for element in policy["elements"]
                            }
                            if policy["elements"]
                            else "Enabled"
                        },
                        {"policy_class": "User"},
                    ]
                }
            }
            sub_dir_sls = [
                (
                    os.path.join("Computer", policy["path"].replace(">", "-")),
                    sls_machine,
                ),
                (os.path.join("User", policy["path"].replace(">", "-")), sls_user),
            ]
        else:
            log.warning(f"unusual policy class: {policy['class']}. Skipping...")
            continue

        for sdir_sls in sub_dir_sls:
            if not os.path.exists(os.path.join(output_dir, sdir_sls[0])):
                os.makedirs(os.path.join(output_dir, sdir_sls[0]))

            with open(
                os.path.join(output_dir, sdir_sls[0], policy["id"] + ".sls"), "w"
            ) as sls_file:
                yaml.dump(sdir_sls[1], sls_file)

            if policy["help"] or policy["supportedOn"]:
                with open(
                    os.path.join(output_dir, sdir_sls[0], policy["id"] + ".sls"), "rb+"
                ) as sls_file:
                    sls_contents = sls_file.read()
                    sls_file.seek(0)
                    yaml_help = ""
                    if policy["supportedOn"]:
                        yaml_help += f"# {policy['supportedOn']}\n#\n"
                    help_split = policy["help"].split("\n")
                    if help_split:
                        comment_help_split = []
                        for line in help_split:
                            comment_help_split.append(f"# {line}")

                        for line in comment_help_split:
                            yaml_help += line + "\n"
                        sls_file.write(yaml_help.encode("ascii", "ignore"))
                        sls_file.write(sls_contents)


def generate_readme(
    output_dir,
    base_uri="https://gitlab.twe.io/merix_studio/bacon-states/-/blob/lgpo/LGPO",
):
    walk = os.walk(output_dir)
    with open(os.path.join(output_dir, "README_LGPO_LIST.md"), "w") as readme:
        readme.write("| file | name | class |\n")
        readme.write("| --- | --- | --- |\n")

        for root, subdirs, files in walk:
            fileroot = root.split(output_dir + "\\")[-1].replace("\\", "/")
            for file_ in files:
                if not file_.endswith(".sls"):
                    continue

                log.info(f"Writing README entry for {file_}")
                with open(os.path.join(root, file_)) as sls_file:
                    try:
                        sls = yaml.load(sls_file, Loader=yaml.FullLoader)
                    except Exception as e:
                        log.error(f"failed to load {os.path.join(root, file_)}: {e}")
                        continue
                name = list(sls.keys())[0]
                policy_class_filter = list(
                    filter(
                        lambda kwarg: list(kwarg.keys())[0] == "policy_class",
                        sls[name]["lgpo.set"],
                    )
                )[0]
                _, policy_class = list(policy_class_filter.items())[0]
                readme.write(
                    f"| [{file_}]({base_uri + '/' + urllib.parse.quote(fileroot) + '/' + urllib.parse.quote(file_)}) "
                )
                readme.write(f"| {name} ")
                readme.write(f"| {policy_class} |\n")


def main(
    output_path, policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"
):
    all_policies = parse_policies(policy_path=policy_path, adml_language=adml_language)
    generate_sls(all_policies, output_path)
    generate_readme(output_path)


if __name__ == "__main__":
    print(sys.argv[1])
    main(sys.argv[1])
