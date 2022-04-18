# windows:SUPPORTED_WindowsXP
#
# Removes most occurrences of the Recycle Bin icon.
# 
# This setting removes the Recycle Bin icon from the desktop, from File Explorer, from programs that use the File Explorer windows, and from the standard Open dialog box.
# 
# This setting does not prevent the user from using other methods to gain access to the contents of the Recycle Bin folder.
# 
# Note: To make changes to this setting effective, you must log off and then log back on.
Remove Recycle Bin icon from desktop:
  lgpo.set:
  - name: NoRecycleBinIcon
  - setting: Enabled
  - policy_class: User
