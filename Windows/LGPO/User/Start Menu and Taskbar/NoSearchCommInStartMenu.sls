# windows:SUPPORTED_Windows7ToVista
#
# If you enable this policy the start menu search box will not search for communications.
# 
# If you disable or do not configure this policy, the start menu will search for communications, unless the user chooses not to in the start menu control panel.
Do not search communications:
  lgpo.set:
  - name: NoSearchCommInStartMenu
  - setting: Enabled
  - policy_class: User
