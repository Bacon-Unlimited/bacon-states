# windows:SUPPORTED_Windows8
#
# This policy setting configures a local override for the configuration to join Microsoft MAPS. This setting can only be set by Group Policy.
# 
#     If you enable this setting, the local preference setting will take priority over Group Policy.
# 
#     If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.
Configure local setting override for reporting to Microsoft MAPS:
  lgpo.set:
  - name: Spynet_LocalSettingOverrideSpynetReporting
  - setting: Enabled
  - policy_class: Machine
