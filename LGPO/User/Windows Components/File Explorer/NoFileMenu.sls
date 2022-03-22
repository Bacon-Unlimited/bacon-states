# windows:SUPPORTED_Win2k
#
# Removes the File menu from My Computer and File Explorer.
# 
# This setting does not prevent users from using other methods to perform tasks available on the File menu.
Remove File menu from File Explorer:
  lgpo.set:
  - name: NoFileMenu
  - setting: Enabled
  - policy_class: User
