# windows:SUPPORTED_Windows_6_3To2k
#
# This policy setting allows you to remove programs on Settings menu.
# 
# If you enable this policy setting, the Control Panel, Printers, and Network and Connection folders are removed from Settings on the Start menu, and from Computer and File Explorer. It also prevents the programs represented by these folders (such as Control.exe) from running.
# 
# However, users can still start Control Panel items by using other methods, such as right-clicking the desktop to start Display or right-clicking Computer to start System.
# 
# If you disable or do not configure this policy setting, the Control Panel, Printers, and Network and Connection folders from Settings are available on the Start menu, and from Computer and File Explorer.
# 
# Also, see the "Disable Control Panel," "Disable Display in Control Panel," and "Remove Network Connections from Start Menu" policy settings.
Remove programs on Settings menu:
  lgpo.set:
  - name: NoSetFolders
  - setting: Enabled
  - policy_class: User
