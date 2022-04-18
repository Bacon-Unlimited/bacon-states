# windows:SUPPORTED_Win2k
#
# Removes shortcut menus from the desktop and File Explorer. Shortcut menus appear when you right-click an item.
# 
# If you enable this setting, menus do not appear when you right-click the desktop or when you right-click the items in File Explorer. This setting does not prevent users from using other methods to issue commands available on the shortcut menus.
Remove File Explorer's default context menu:
  lgpo.set:
  - name: NoViewContextMenu
  - setting: Enabled
  - policy_class: User
