# windows:SUPPORTED_Windows_6_3
#
# 
#         Prevent the "Start layout" group from syncing to and from this PC. This turns off and disables the "Start layout" group on the "sync your settings" page in PC settings.
# 
#         If you enable this policy setting, the "Start layout" group will not be synced.
# 
#         Use the option "Allow users to turn start syncing on" so that syncing is turned off by default but not disabled.
# 
#         If you do not set or disable this setting, syncing of the "Start layout" group is on by default and configurable by the user.
#       
Do not sync start settings:
  lgpo.set:
  - name: DisableStartLayoutSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
