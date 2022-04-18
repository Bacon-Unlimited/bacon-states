# windows:SUPPORTED_Win2kSP1
#
# Determines whether users can connect and disconnect remote access connections.
# 
# If you enable this setting (and enable the "Enable Network Connections settings for Administrators" setting), double-clicking the icon has no effect, and the Connect and Disconnect menu items are disabled for all users (including administrators).
# 
# Important: If the "Enable Network Connections settings for Administrators" is disabled or not configured, this setting will not apply to administrators on post-Windows 2000 computers.
# 
# If you disable this setting or do not configure it, the Connect and Disconnect options for remote access connections are available to all users. Users can connect or disconnect a remote access connection by double-clicking the icon representing the connection, by right-clicking it, or by using the File menu.
Prohibit connecting and disconnecting a remote access connection:
  lgpo.set:
  - name: NC_RasConnect
  - setting: Enabled
  - policy_class: User
