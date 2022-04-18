# windows:SUPPORTED_Windows8
#
# This policy setting configures a local override for the configuration of monitoring for file and program activity on your computer. This setting can only be set by Group Policy.
# 
#     If you enable this setting, the local preference setting will take priority over Group Policy.
# 
#     If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.
Configure local setting override for monitoring file and program activity on your computer:
  lgpo.set:
  - name: RealtimeProtection_LocalSettingOverrideDisableOnAccessProtection
  - setting: Enabled
  - policy_class: Machine
