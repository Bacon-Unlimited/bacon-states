# windows:SUPPORTED_Windows8
#
# Prevent the "app settings" group from syncing to and from this PC.  This turns off and disables the "app settings" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "app settings" group will not be synced.
# 
# Use the option "Allow users to turn app settings syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "app settings" group is on by default and configurable by the user.
Do not sync app settings:
  lgpo.set:
  - name: DisableApplicationSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
