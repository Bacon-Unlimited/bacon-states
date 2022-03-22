# windows:SUPPORTED_Windows8
#
# Prevent the "browser" group from syncing to and from this PC.  This turns off and disables the "browser" group on the "sync your settings" page in PC settings.  The "browser" group contains settings and info like history and favorites.
# 
# If you enable this policy setting, the "browser" group, including info like history and favorites, will not be synced.
# 
# Use the option "Allow users to turn browser syncing on" so that syncing is turned off by default but not disabled.
# 
# If you do not set or disable this setting, syncing of the "browser" group is on by default and configurable by the user.
#       
Do not sync browser settings:
  lgpo.set:
  - name: DisableWebBrowserSettingSync
  - setting:
      CheckBox_UserOverride: boolean-placeholder
  - policy_class: Machine
