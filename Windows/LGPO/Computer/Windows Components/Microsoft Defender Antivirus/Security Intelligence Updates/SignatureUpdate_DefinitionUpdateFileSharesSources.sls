# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure UNC file share sources for downloading security intelligence updates. Sources will be contacted in the order specified. The value of this setting should be entered as a pipe-separated string enumerating the security intelligence update sources. For example: "{\\unc1 | \\unc2 }". The list is empty by default.
# 
#     If you enable this setting, the specified sources will be contacted for security intelligence updates. Once security intelligence updates have been successfully downloaded from one specified source, the remaining sources in the list will not be contacted.
# 
#     If you disable or do not configure this setting, the list will remain empty by default and no sources will be contacted.
Define file shares for downloading security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_DefinitionUpdateFileSharesSources
  - setting:
      SignatureUpdate_DefinitionUpdateFileSharesSources: text-placeholder
  - policy_class: Machine
