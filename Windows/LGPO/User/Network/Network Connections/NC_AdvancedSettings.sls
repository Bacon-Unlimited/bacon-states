# SUPPORTED_Win2kSP1_WindowsPreVista
#
# Determines whether the Advanced Settings item on the Advanced menu in Network Connections is enabled for administrators.
# 
# The Advanced Settings item lets users view and change bindings and view and change the order in which the computer accesses connections, network providers, and print providers.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), the Advanced Settings item is disabled for administrators.
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Advanced Settings item is enabled for administrators.
# 
# Note: Nonadministrators are already prohibited from accessing the Advanced Settings dialog box, regardless of this setting.
Prohibit access to the Advanced Settings item on the Advanced menu:
  lgpo.set:
  - name: NC_AdvancedSettings
  - setting: Enabled
  - policy_class: User
