# SUPPORTED_IE5
#
# This policy setting prevents the shortcut menu from appearing when a user right-clicks a webpage while using Internet Explorer. Starting with Windows 8, this policy setting only applies to Internet Explorer on the desktop.
# 
# If you enable this policy setting, the shortcut menu will not appear when a user right-clicks a webpage.
# 
# If you disable or do not configure this policy setting, users can use the shortcut menu.
Turn off Shortcut Menu:
  lgpo.set:
  - name: NoBrowserContextMenu
  - setting: Enabled
  - policy_class: User
