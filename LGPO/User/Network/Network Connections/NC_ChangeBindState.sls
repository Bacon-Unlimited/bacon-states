# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether administrators can enable and disable the components used by LAN connections.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the check boxes for enabling and disabling components are disabled. As a result, administrators cannot enable or disable the components that a connection uses.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Properties dialog box for a connection includes a check box beside the name of each component that the connection uses. Selecting the check box enables the component, and clearing the check box disables the component.
# 
# Note: When the "Prohibit access to properties of a LAN connection" setting is enabled, users are blocked from accessing the check boxes for enabling and disabling the components of a LAN connection.
# 
# Note: Nonadministrators are already prohibited from enabling or disabling components for a LAN connection, regardless of this setting.
Prohibit Enabling/Disabling components of a LAN connection:
  lgpo.set:
  - name: NC_ChangeBindState
  - setting: Enabled
  - policy_class: User
