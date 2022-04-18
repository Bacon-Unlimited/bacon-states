# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether Administrators and Network Configuration Operators can change the properties of components used by a LAN connection.
# 
# This setting determines whether the Properties button for components of a LAN connection is enabled.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Properties button is disabled for Administrators. Network Configuration Operators are prohibited from accessing connection components, regardless of the "Enable Network Connections settings for Administrators" setting.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting does not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Properties button is enabled for administrators and Network Configuration Operators.
# 
# The Local Area Connection Properties dialog box includes a list of the network components that the connection uses. To view or change the properties of a component, click the name of the component, and then click the Properties button beneath the component list.
# 
# Note: Not all network components have configurable properties. For components that are not configurable, the Properties button is always disabled.
# 
# Note: When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the Properties button for LAN connection components.
# 
# Note: Network Configuration Operators only have permission to change TCP/IP properties. Properties for all other components are unavailable to these users.
# 
# Note: Nonadministrators are already prohibited from accessing properties of components for a LAN connection, regardless of this setting.
Prohibit access to properties of components of a LAN connection:
  lgpo.set:
  - name: NC_LanChangeProperties
  - setting: Enabled
  - policy_class: User
