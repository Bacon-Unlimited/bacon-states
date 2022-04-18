# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to configure the list of moderate-risk file types. If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file. This inclusion list overrides the list of potentially high-risk file types built into Windows and it takes precedence over the low-risk inclusion list but has a lower precedence than the high-risk inclusion list (where an extension is listed in more than one inclusion list).
# 
# If you enable this policy setting, you can specify file types which pose a moderate risk.
# 
# If you disable this policy setting, Windows uses its default trust logic.
# 
# If you do not configure this policy setting, Windows uses its default trust logic.
Inclusion list for moderate risk file types:
  lgpo.set:
  - name: AM_SetModRiskInclusion
  - setting:
      AM_InstructModRiskInclusionList: text-placeholder
  - policy_class: User
