# windows:SUPPORTED_Windows7ToVista
#
# If you enable this policy the start menu will not show a link to the Games folder.
# 
# If you disable or do not configure this policy, the start menu will show a link to the Games folder, unless the user chooses to remove it in the start menu control panel.
Remove Games link from Start Menu:
  lgpo.set:
  - name: NoGamesFolderOnStartMenu
  - setting: Enabled
  - policy_class: User
