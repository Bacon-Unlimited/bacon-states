# SUPPORTED_IE5
#
# Prevents users from opening a file or Web page from the File menu in Internet Explorer.
# 
# If you enable this policy, the Open dialog box will not appear when users click the Open command on the File menu. If users click the Open command, they will be notified that the command is not available.
# 
# If you disable this policy or do not configure it, users can open a Web page from the browser File menu.
# 
# Caution: This policy does not prevent users from right-clicking a link on a Web page, and then clicking the Open or Open in New Window command. To prevent users from opening Web pages by using the shortcut menu, set the "Disable Open in New Window menu option" policy, which disables this command on the shortcut menu, or the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
'File menu: Disable Open menu option':
  lgpo.set:
  - name: File_NoFileOpen
  - setting: Enabled
  - policy_class: User
