# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can rename their private remote access connections.
# 
# Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option is disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Rename option is enabled for all users' private remote access connections. Users can rename their private connection by clicking an icon representing the connection or by using the File menu.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit renaming private remote access connections:
  lgpo.set:
  - name: NC_RenameMyRasConnection
  - setting: Enabled
  - policy_class: User
