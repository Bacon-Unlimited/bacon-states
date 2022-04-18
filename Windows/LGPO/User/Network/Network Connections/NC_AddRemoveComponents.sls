# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether administrators can add and remove network components for a LAN or remote access connection. This setting has no effect on nonadministrators.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Install and Uninstall buttons for components of connections are disabled, and administrators are not permitted to access network components in the Windows Components Wizard.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Install and Uninstall buttons for components of connections in the Network Connections folder are enabled. Also, administrators can gain access to network components in the Windows Components Wizard.
# 
# The Install button opens the dialog boxes used to add network components. Clicking the Uninstall button removes the selected component in the components list (above the button).
# 
# The Install and Uninstall buttons appear in the properties dialog box for connections. These buttons are on the General tab for LAN connections and on the Networking tab for remote access connections.
# 
# Note: When the "Prohibit access to properties of a LAN connection", "Ability to change properties of an all user remote access connection", or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the connection properties dialog box, the Install and Uninstall buttons for connections are blocked.
# 
# Note: Nonadministrators are already prohibited from adding and removing connection components, regardless of this setting.
Prohibit adding and removing components for a LAN or remote access connection:
  lgpo.set:
  - name: NC_AddRemoveComponents
  - setting: Enabled
  - policy_class: User
