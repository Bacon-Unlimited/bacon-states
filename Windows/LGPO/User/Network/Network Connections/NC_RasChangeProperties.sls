# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether users can view and change the properties of components used by a private or all-user remote access connection.
# 
# This setting determines whether the Properties button for components used by a private or all-user remote access connection is enabled.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting does not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Properties button is enabled for all users.
# 
# The Networking tab of the Remote Access Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.
# 
# Note: Not all network components have configurable properties. For components that are not configurable, the Properties button is always disabled.
# 
# Note: When the "Ability to change properties of an all user remote access connection" or "Prohibit changing properties of a private remote access connection" settings are set to deny access to the Remote Access Connection Properties dialog box, the Properties button for remote access connection components is blocked.
# 
# Note: This setting does not prevent users from using other programs, such as Internet Explorer, to bypass this setting.
Prohibit access to properties of components of a remote access connection:
  lgpo.set:
  - name: NC_RasChangeProperties
  - setting: Enabled
  - policy_class: User
