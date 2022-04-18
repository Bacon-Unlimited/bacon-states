# windows:SUPPORTED_Windows8
#
# This policy setting configures a local override for the configuration of the number of days items should be kept in the Quarantine folder before being removed. This setting can only be set by Group Policy.
# 
#     If you enable this setting, the local preference setting will take priority over Group Policy.
# 
#     If you disable or do not configure this setting, Group Policy will take priority over the local preference setting.
Configure local setting override for the removal of items from Quarantine folder:
  lgpo.set:
  - name: Quarantine_LocalSettingOverridePurgeItemsAfterDelay
  - setting: Enabled
  - policy_class: Machine
