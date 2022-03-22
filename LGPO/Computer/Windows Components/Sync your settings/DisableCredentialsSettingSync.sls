# windows:SUPPORTED_Windows8
#
# Prevent the "passwords" group from syncing to and from this PC.  This turns off and disables the "passwords" group on the "sync your settings" page in PC settings.
# 
# If you enable this policy setting, the "passwords" group will not be synced.
# 
# Use the option "Allow users to turn passwords syncing on" so that syncing it turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "passwords" group is on by default and configurable by the user.
Do not sync passwords:
  lgpo.set:
  - name: DisableCredentialsSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
