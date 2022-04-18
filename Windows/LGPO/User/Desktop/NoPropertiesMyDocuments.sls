# windows:SUPPORTED_WindowsPreVista
#
# This policy setting hides the Properties menu command on the shortcut menu for the My Documents icon.
# 
# If you enable this policy setting, the Properties menu command will not be displayed when the user does any of the following:
# 
# Right-clicks the My Documents icon.
# Clicks the My Documents icon, and then opens the File menu.
# Clicks the My Documents icon, and then presses ALT+ENTER.
# 
# If you disable or do not configure this policy setting, the Properties menu command is displayed.
Remove Properties from the Documents icon context menu:
  lgpo.set:
  - name: NoPropertiesMyDocuments
  - setting: Enabled
  - policy_class: User
