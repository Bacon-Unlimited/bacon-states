# windows:SUPPORTED_Windows8
#
# Prevent the "Other Windows settings" group from syncing to and from this PC.  This turns off and disables the "Other Windows settings" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "Other Windows settings" group will not be synced.
# 
# Use the option "Allow users to turn other Windows settings syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "Other Windows settings" group is on by default and configurable by the user.
Do not sync other Windows settings:
  lgpo.set:
  - name: DisableWindowsSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
