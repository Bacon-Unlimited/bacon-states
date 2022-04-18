# windows:SUPPORTED_Windows8
#
# This policy setting configures a local override for the configuration of the time to run a scheduled full scan to complete remediation. This setting can only be set by Group Policy.
# 
#     If you enable this setting, the local preference setting will take priority over Group Policy.
# 
#     If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.
Configure local setting override for the time of day to run a scheduled full scan to complete remediation:
  lgpo.set:
  - name: Remediation_LocalSettingOverrideScan_ScheduleTime
  - setting: Enabled
  - policy_class: Machine
