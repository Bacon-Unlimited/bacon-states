# windows:SUPPORTED_Win2k
#
# Prevents users from using File Explorer or Network Locations to map or disconnect network drives.
# 
# If you enable this setting, the system removes the Map Network Drive and Disconnect Network Drive commands from the toolbar and Tools menus in File Explorer and Network Locations and from menus that appear when you right-click the File Explorer or Network Locations icons.
# 
# This setting does not prevent users from connecting to another computer by typing the name of a shared folder in the Run dialog box.
# 
# Note:
# 
# This setting was documented incorrectly on the Explain tab in Group Policy for Windows 2000. The Explain tab states incorrectly that this setting prevents users from connecting and disconnecting drives.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
Remove "Map Network Drive" and "Disconnect Network Drive":
  lgpo.set:
  - name: NoNetConnectDisconnect
  - setting: Enabled
  - policy_class: User
