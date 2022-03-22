# windows:SUPPORTED_Win2k
#
# This policy setting allows you to remove access to the context menus for the taskbar.
# 
# If you enable this policy setting, the menus that appear when you right-click the taskbar and items on the taskbar are hidden, such as the Start button, the clock, and the taskbar buttons.
# 
# If you disable or do not configure this policy setting, the context menus for the taskbar are available.
# 
# This policy setting does not prevent users from using other methods to issue the commands that appear on these menus.
Remove access to the context menus for the taskbar:
  lgpo.set:
  - name: NoTrayContextMenu
  - setting: Enabled
  - policy_class: User
