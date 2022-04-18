# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting allows you to manage the default risk level for file types. To fully customize the risk level for file attachments, you may also need to configure the trust logic for file attachments.
# 
# High Risk: If the attachment is in the list of high-risk file types and is from the restricted zone, Windows blocks the user from accessing the file. If the file is from the Internet zone, Windows prompts the user before accessing the file.
# 
# Moderate Risk: If the attachment is in the list of moderate-risk file types and is from the restricted or Internet zone, Windows prompts the user before accessing the file.
# 
# Low Risk: If the attachment is in the list of low-risk file types, Windows will not prompt the user before accessing the file, regardless of the file's zone information.
# 
# If you enable this policy setting, you can specify the default risk level for file types.
# 
# If you disable this policy setting, Windows sets the default risk level to moderate.
# 
# If you do not configure this policy setting, Windows sets the default risk level to moderate.
Default risk level for file attachments:
  lgpo.set:
  - name: AM_SetFileRiskLevel
  - setting:
      AM_RiskLevel: enum-placeholder
  - policy_class: User
