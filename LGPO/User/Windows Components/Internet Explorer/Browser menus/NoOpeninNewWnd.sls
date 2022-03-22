# SUPPORTED_IE5
#
# Prevents using the shortcut menu to open a link in a new browser window.
# 
# If you enable this policy, users cannot point to a link, click the right mouse button, and then click the Open in New Window command.
# 
# If you disable this policy or do not configure it, users can open a Web page in a new browser window by using the shortcut menu.
# 
# This policy can be used in coordination with the "File menu: Disable New menu option" policy, which prevents users from opening the browser in a new window by clicking the File menu, pointing to New, and then clicking Window.
# 
# Note: When users click the Open in New Window command, the link will not open in a new window and they will be informed that the command is not available.
Disable Open in New Window menu option:
  lgpo.set:
  - name: NoOpeninNewWnd
  - setting: Enabled
  - policy_class: User
