# windows:SUPPORTED_WindowsPreVista
#
# Determines whether users can delete all user remote access connections.
# 
# To create an all-user remote access connection, on the Connection Availability page in the New Connection Wizard, click the "For all users" option.
# 
# If you enable this setting, all users can delete shared remote access connections. In addition, if your file system is NTFS, users need to have Write access to Documents and Settings\All Users\Application Data\Microsoft\Network\Connections\Pbk to delete a shared remote access connection.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), users (including administrators) cannot delete all-user remote access connections. (By default, users can still delete their private connections, but you can change the default by using the "Prohibit deletion of remote access connections" setting.)
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you do not configure this setting, only Administrators and Network Configuration Operators can delete all user remote access connections.
# 
# Important: When enabled, the "Prohibit deletion of remote access connections" setting takes precedence over this setting. Users (including administrators) cannot delete any remote access connections, and this setting is ignored.
# 
# Note: LAN connections are created and deleted automatically by the system when a LAN adapter is installed or removed. You cannot use the Network Connections folder to create or delete a LAN connection.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Ability to delete all user remote access connections:
  lgpo.set:
  - name: NC_DeleteAllUserConnection
  - setting: Enabled
  - policy_class: User
