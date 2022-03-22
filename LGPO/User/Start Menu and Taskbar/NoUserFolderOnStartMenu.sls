# windows:SUPPORTED_Windows7ToVista
#
# If you enable this policy the start menu will not show a link to the user's storage folder.
# 
# If you disable or do not configure this policy, the start menu will display a link, unless the user chooses to remove it in the start menu control panel.
Remove user folder link from Start Menu:
  lgpo.set:
  - name: NoUserFolderOnStartMenu
  - setting: Enabled
  - policy_class: User
