# windows:SUPPORTED_WindowsPreVista
#
# Determines whether users can enable/disable LAN connections.
# 
# If you enable this setting, the Enable and Disable options for LAN connections are available to users (including nonadministrators). Users can enable/disable a LAN connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.
# 
# If you disable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Enable and Disable menu items are disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you do not configure this setting, only Administrators and Network Configuration Operators can enable/disable LAN connections.
# 
# Note: Administrators can still enable/disable LAN connections from Device Manager when this setting is disabled.
Ability to Enable/Disable a LAN connection:
  lgpo.set:
  - name: NC_LanConnect
  - setting: Enabled
  - policy_class: User
