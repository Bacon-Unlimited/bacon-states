# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can rename LAN or all user remote access connections.
# 
# If you enable this setting, the Rename option is enabled for all users. Users can rename connections by clicking the icon representing a connection or by using the File menu.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Rename option for LAN and all user remote access connections is disabled for all users (including Administrators and Network Configuration Operators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If this setting is not configured, only Administrators and Network Configuration Operators have the right to rename LAN or all user remote access connections.
# 
# Note: When configured, this setting always takes precedence over the "Ability to rename LAN connections" and "Ability to rename all user remote access connections" settings.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to rename remote access connections.
Ability to rename LAN connections or remote access connections available to all users:
  lgpo.set:
  - name: NC_RenameConnection
  - setting: Enabled
  - policy_class: User
