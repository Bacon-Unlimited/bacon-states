# windows:SUPPORTED_Win2kSP1
#
# Determines whether the Remote Acccess Preferences item on the Advanced menu in Network Connections folder is enabled.
# 
# The Remote Access Preferences item lets users create and change connections before logon and configure automatic dialing and callback features.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Remote Access Preferences item is disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Remote Access Preferences item is enabled for all users.
Prohibit access to the Remote Access Preferences item on the Advanced menu:
  lgpo.set:
  - name: NC_DialupPrefs
  - setting: Enabled
  - policy_class: User
