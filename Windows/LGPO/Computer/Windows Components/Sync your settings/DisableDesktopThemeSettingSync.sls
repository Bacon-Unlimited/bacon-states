# windows:SUPPORTED_Windows8
#
# Prevent the "desktop personalization" group from syncing to and from this PC.  This turns off and disables the "desktop personalization" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "desktop personalization" group will not be synced.
# 
# Use the option "Allow users to turn desktop personalization syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "desktop personalization" group is on by default and configurable by the user.
#       
Do not sync desktop personalization:
  lgpo.set:
  - name: DisableDesktopThemeSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
