# windows:SUPPORTED_Windows8
#
# This policy setting allows you specify a list of file types that should be excluded from scheduled, custom, and real-time scanning. File types should be added under the Options for this setting. Each entry must be listed as a name value pair, where the name should be a string representation of the file type extension (such as "obj" or "lib"). The value is not used and it is recommended that this be set to 0.
Extension Exclusions:
  lgpo.set:
  - name: Exclusions_Extensions
  - setting:
      Exclusions_ExtensionsList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
