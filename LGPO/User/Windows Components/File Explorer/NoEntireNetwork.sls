# windows:SUPPORTED_WindowsPreVista
#
# Removes all computers outside of the user's workgroup or local domain from lists of network resources in File Explorer and Network Locations.
# 
# If you enable this setting, the system removes the Entire Network option and the icons representing networked computers from Network Locations and from the browser associated with the Map Network Drive option.
# 
# This setting does not prevent users from viewing or connecting to computers in their workgroup or domain. It also does not prevent users from connecting to remote computers by other commonly used methods, such as by typing the share name in the Run dialog box or the Map Network Drive dialog box.
# 
# To remove computers in the user's workgroup or domain from lists of network resources, use the "No Computers Near Me in Network Locations" setting.
# 
# Note: It is a requirement for third-party applications with Windows 2000 or later certification to adhere to this setting.
No Entire Network in Network Locations:
  lgpo.set:
  - name: NoEntireNetwork
  - setting: Enabled
  - policy_class: User
