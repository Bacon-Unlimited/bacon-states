# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can delete remote access connections.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) cannot delete any remote access connections. This setting also disables the Delete option on the context menu for a remote access connection and on the File menu in the Network Connections folder.
# 
# Important:  If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, all users can delete their private remote access connections. Private connections are those that are available only to one user. (By default, only Administrators and Network Configuration Operators can delete connections available to all users, but you can change the default by using the "Ability to delete all user remote access connections" setting.)
# 
# Important: When enabled, this setting takes precedence over the "Ability to delete all user remote access connections" setting. Users cannot delete any remote access connections, and the "Ability to delete all user remote access connections" setting is ignored.
# 
# Note: LAN connections are created and deleted automatically when a LAN adapter is installed or removed. You cannot use the Network Connections folder to create or delete a LAN connection.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit deletion of remote access connections:
  lgpo.set:
  - name: NC_DeleteConnection
  - setting: Enabled
  - policy_class: User
