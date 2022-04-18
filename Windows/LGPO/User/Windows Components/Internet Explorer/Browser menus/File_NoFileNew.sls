# SUPPORTED_IE5
#
# Prevents users from opening a new browser window from the File menu.
# 
# If this policy is enabled, users cannot open a new browser window by clicking the File menu, pointing to the New menu, and then clicking Window. The user interface is not changed, but a new window will not be opened, and users will be informed that the command is not available.
# 
# If you disable this policy or do not configure it, users can open a new browser window from the File menu.
# 
# Caution: This policy does not prevent users from opening a new browser window by right-clicking, and then clicking the Open in New Window command. To prevent users from using the shortcut menu to open new browser windows, you should also set the "Disable Open in New Window menu option" policy, which disables this command on the shortcut menu, or the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
# 
# Note: the user will still be able to open New Tabs.
'File menu: Disable New menu option':
  lgpo.set:
  - name: File_NoFileNew
  - setting: Enabled
  - policy_class: User
