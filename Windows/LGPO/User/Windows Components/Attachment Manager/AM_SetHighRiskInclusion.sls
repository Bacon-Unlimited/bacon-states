# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the list of high-risk file types. If the file attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file. This inclusion list takes precedence over the medium-risk and low-risk inclusion lists (where an extension is listed in more than one inclusion list).
# 
# If you enable this policy setting, you can create a custom list of high-risk file types.
# 
# If you disable this policy setting, Windows uses its built-in list of file types that pose a high risk.
# 
# If you do not configure this policy setting, Windows uses its built-in list of high-risk file types.
Inclusion list for high risk file types:
  lgpo.set:
  - name: AM_SetHighRiskInclusion
  - setting:
      AM_InstructHighRiskInclusionList: text-placeholder
  - policy_class: User
