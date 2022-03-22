# windows:SUPPORTED_Windows8
#
# This policy setting allows you to define the order in which different security intelligence update sources should be contacted. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources in order. Possible values are: “InternalDefinitionUpdateServer”, “MicrosoftUpdateServer”, “MMPC”, and “FileShares”
# 
#     For example: { InternalDefinitionUpdateServer | MicrosoftUpdateServer | MMPC }
# 
#     If you enable this setting, security intelligence update sources will be contacted in the order specified. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.
# 
#     If you disable or do not configure this setting, security intelligence update sources will be contacted in a default order.
Define the order of sources for downloading security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_FallbackOrder
  - setting:
      SignatureUpdate_FallbackOrder: text-placeholder
  - policy_class: Machine
