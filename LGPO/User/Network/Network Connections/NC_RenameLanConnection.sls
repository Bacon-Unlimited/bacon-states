# windows:SUPPORTED_WindowsPreVista
#
# Determines whether nonadministrators can rename a LAN connection.
# 
# If you enable this setting, the Rename option is enabled for LAN connections. Nonadministrators can rename LAN connections by clicking an icon representing the connection or by using the File menu.
# 
# If you disable this setting, the Rename option is disabled for nonadministrators only.
# 
# If you do not configure this setting, only Administrators and Network Configuration Operators can rename LAN connections
# 
# Note: This setting does not apply to Administrators.
# 
# Note: When the "Ability to rename LAN connections or remote access connections available to all users" setting is configured (set to either enabled or disabled), this setting does not apply.
Ability to rename LAN connections:
  lgpo.set:
  - name: NC_RenameLanConnection
  - setting: Enabled
  - policy_class: User
