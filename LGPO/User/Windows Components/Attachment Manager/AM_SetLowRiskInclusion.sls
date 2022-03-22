# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the list of low-risk file types. If the attachment is in the list of low-risk file types, Windows will not prompt the user before accessing the file, regardless of the file's zone information. This inclusion list overrides the list of high-risk file types built into Windows and has a lower precedence than the high-risk or medium-risk inclusion lists (where an extension is listed in more than one inclusion list).
# 
# If you enable this policy setting, you can specify file types that pose a low risk.
# 
# If you disable this policy setting, Windows uses its default trust logic.
# 
# If you do not configure this policy setting, Windows uses its default trust logic.
Inclusion list for low file types:
  lgpo.set:
  - name: AM_SetLowRiskInclusion
  - setting:
      AM_InstructLowRiskInclusionList: text-placeholder
  - policy_class: User
