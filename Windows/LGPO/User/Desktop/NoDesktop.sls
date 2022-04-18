# windows:SUPPORTED_Win2k
#
# Removes icons, shortcuts, and other default and user-defined items from the desktop, including Briefcase, Recycle Bin, Computer, and Network Locations.
# 
# Removing icons and shortcuts does not prevent the user from using another method to start the programs or opening the items they represent.
# 
# Also, see "Items displayed in Places Bar" in User Configuration\Administrative Templates\Windows Components\Common Open File Dialog to remove the Desktop icon from the Places Bar. This will help prevent users from saving data to the Desktop.
Hide and disable all items on the desktop:
  lgpo.set:
  - name: NoDesktop
  - setting: Enabled
  - policy_class: User
