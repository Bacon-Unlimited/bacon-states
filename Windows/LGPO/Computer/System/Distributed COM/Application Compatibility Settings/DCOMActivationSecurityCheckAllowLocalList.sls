# windows:SUPPORTED_WindowsXPSP2
#
# Allows you to specify that local computer administrators can supplement the "Define Activation Security Check exemptions" list.
# 
# If you enable this policy setting, and DCOM does not find an explicit entry for a DCOM server application id (appid) in the "Define Activation Security Check exemptions" policy (if enabled), DCOM will look for an entry in the locally configured list.
# 
# If you disable this policy setting, DCOM will not look in the locally configured DCOM activation security check exemption list.
# 
# If you do not configure this policy setting, DCOM will only look in the locally configured exemption list if the "Define Activation Security Check exemptions" policy is not configured.
# 
Allow local activation security check exemptions:
  lgpo.set:
  - name: DCOMActivationSecurityCheckAllowLocalList
  - setting: Enabled
  - policy_class: Machine
