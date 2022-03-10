import json
import os
import sys
from lxml import etree
from lxml.etree import Comment
from lxml.etree import XMLParser
from lxml.etree import XMLSyntaxError

recovering_parser = etree.XMLParser(recover=True)


def main(
    output_path, policy_path="C:\\Windows\\PolicyDefinitions", adml_language="en-US"
):
    print(f"Parsing policies in {policy_path} ...")
    all_policies = []

    admx_files = [f for f in os.listdir(policy_path) if f.endswith(".admx")]
    # adml_files = [f for f in os.listdir(os.path.join(policy_path, adml_language)) if f.endswith(".adml")]

    for admx_ in admx_files:
        print(f"Scanning {admx_} ...")
        try:
            admx_tree = etree.parse(
                os.path.join(policy_path, admx_), parser=recovering_parser
            )
        except XMLSyntaxError as e:
            print(f"ERROR - {e} for {admx_}. Skipping...")
            continue
        admx_root = admx_tree.getroot()

        adml_path = os.path.join(
            policy_path, adml_language, os.path.splitext(admx_)[0] + ".adml"
        )
        if os.path.exists(adml_path):
            adml_tree = etree.parse(adml_path, parser=recovering_parser)
            adml_root = adml_tree.getroot()
        else:
            print(f"ERROR - adml not found at {adml_path}")
            adml_tree = None

        policies = [
            child
            for child in admx_root
            if child.tag is not Comment and child.tag.endswith("policies")
        ]
        if policies:
            policies = policies[0]
        else:
            print(f"ERROR - No policies found for {admx_}. Skipping...")
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

            print(f"Extracting info from {policy_info['id']} policy ...")

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
                    print(f"WARNING - policy name not found for {policy_info['id']}")

                policy_help = list(
                    filter(
                        lambda string: string.attrib["id"]
                        == f"{policy_info['id']}_Help",
                        string_table,
                    )
                )
                if policy_help:
                    print("DEBUG - Found _Help")
                    policy_help = policy_help[0]
                    policy_info["help"] = policy_help.text
                else:
                    print("DEBUG - Help not found, searching for _explain")
                    policy_help = list(
                        filter(
                            lambda string: string.attrib["id"]
                            == f"{policy_info['id']}_explain",
                            string_table,
                        )
                    )
                    if policy_help:
                        policy_info["help"] = policy_help[0].text
                        print("DEBUG - _explain found")
                    else:
                        print("DEBUG - No _Help or _explain found")

            elements = [
                child
                for child in policy
                if child.tag is not Comment and child.tag.endswith("elements")
            ]
            if elements:
                elements = elements[0]
                print("Scanning elements ...")
                print(f"{len(elements)} found.")
                for elem in elements:
                    if elem.tag is Comment:
                        continue
                    element_info = {
                        "attrib": dict(elem.attrib),
                        "type": elem.tag.split("}")[-1],
                    }
                    policy_info["elements"].append(element_info)
            else:
                print("No elements found.")

            all_policies.append(policy_info)

    with open(output_path, "w") as out_:
        json.dump(all_policies, out_, indent=2)


if __name__ == "__main__":
    print(sys.argv[1])
    main(sys.argv[1])
