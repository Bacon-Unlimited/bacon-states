# windows:SUPPORTED_Windows8
#
# Prevent syncing to and from this PC.  This turns off and disables the "sync your settings" switch on the "sync your settings" page in PC Settings.
# 
# If you enable this policy setting, "sync your settings" will be turned off, and none of the "sync your setting" groups will be synced on this PC.
# 
# Use the option "Allow users to turn syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, "sync your settings" is on by default and configurable by the user.
Do not sync:
  lgpo.set:
  - name: DisableSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
