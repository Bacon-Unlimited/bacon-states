# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to remove computers in the user's workgroup and domain from lists of network resources in File Explorer and Network Locations.
# 
# If you enable this policy setting, the system removes the "Computers Near Me" option and the icons representing nearby computers from Network Locations. This policy setting also removes these icons from the Map Network Drive browser.
# 
# If you disable or do not configure this policy setting, computers in the user's workgroup and domain appear in lists of network resources in File Explorer and Network Locations.
# 
# This policy setting does not prevent users from connecting to computers in their workgroup or domain by other commonly used methods, such as typing the share name in the Run dialog box or the Map Network Drive dialog box.
# 
# To remove network computers from lists of network resources, use the "No Entire Network in Network Locations" policy setting.
# 
No Computers Near Me in Network Locations:
  lgpo.set:
  - name: NoWorkgroupContents
  - setting: Enabled
  - policy_class: User
