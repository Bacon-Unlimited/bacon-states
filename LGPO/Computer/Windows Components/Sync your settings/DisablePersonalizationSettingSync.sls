# windows:SUPPORTED_Windows8
#
# Prevent the "personalize" group from syncing to and from this PC.  This turns off and disables the "personalize" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "personalize" group will not be synced.
# 
# Use the option "Allow users to turn personalize syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "personalize" group is on by default and configurable by the user.
Do not sync personalize:
  lgpo.set:
  - name: DisablePersonalizationSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
