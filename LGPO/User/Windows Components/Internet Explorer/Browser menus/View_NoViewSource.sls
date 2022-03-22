# SUPPORTED_IE5
#
# Prevents users from viewing the HTML source of Web pages by clicking the Source command on the View menu.
# 
# If you enable this policy, the Source command on the View menu will appear dimmed.
# 
# If you disable this policy or do not configure it, then users can view the HTML source of Web pages from the browser View menu.
# 
# Caution: This policy does not prevent users from viewing the HTML source of a Web page by right-clicking a Web page to open the shortcut menu, and then clicking View Source. To prevent users from viewing the HTML source of a Web page from the shortcut menu, set the "Turn off Shortcut Menu" policy, which disables the entire shortcut menu.
'View menu: Disable Source menu option':
  lgpo.set:
  - name: View_NoViewSource
  - setting: Enabled
  - policy_class: User
