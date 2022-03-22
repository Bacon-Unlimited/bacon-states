# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can view and change the properties of their private remote access connections.
# 
# Private connections are those that are available only to one user. To create a private connection, on the Connection Availability page in the New Connection Wizard, click the "Only for myself" option.
# 
# This setting determines whether the Properties menu item is enabled, and thus, whether the Remote Access Connection Properties dialog box for a private connection is available to users.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties menu items are disabled, and no users (including administrators) can open the Remote Access Connection Properties dialog box for a private connection.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, a Properties menu item appears when any user right-clicks the icon representing a private remote access connection. Also, when any user selects the connection, Properties appears on the File menu.
# 
# Note: This setting takes precedence over settings that manipulate the availability of features in the Remote Access Connection Properties dialog box. If this setting is enabled, nothing within the properties dialog box for a remote access connection will be available to users.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit changing properties of a private remote access connection:
  lgpo.set:
  - name: NC_RasMyProperties
  - setting: Enabled
  - policy_class: User
