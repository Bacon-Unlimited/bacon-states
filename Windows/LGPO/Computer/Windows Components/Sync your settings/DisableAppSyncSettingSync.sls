# windows:SUPPORTED_Windows_6_3
#
# 
#         Prevent the "AppSync" group from syncing to and from this PC.  This turns off and disables the "AppSync" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "AppSync" group will not be synced.
# 
# Use the option "Allow users to turn app syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "AppSync" group is on by default and configurable by the user.
#       
Do not sync Apps:
  lgpo.set:
  - name: DisableAppSyncSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
