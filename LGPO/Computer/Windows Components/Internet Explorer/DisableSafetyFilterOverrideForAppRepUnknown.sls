# SUPPORTED_IE9
#
# This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter warns the user about executable files that Internet Explorer users do not commonly download from the Internet.
# 
# If you enable this policy setting, SmartScreen Filter warnings block the user.
# 
# If you disable or do not configure this policy setting, the user can bypass SmartScreen Filter warnings.
Prevent bypassing SmartScreen Filter warnings about files that are not commonly downloaded from the Internet:
  lgpo.set:
  - name: DisableSafetyFilterOverrideForAppRepUnknown
  - setting: Enabled
  - policy_class: Machine
