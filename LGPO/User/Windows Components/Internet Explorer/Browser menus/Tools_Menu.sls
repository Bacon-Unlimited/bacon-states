# SUPPORTED_IE5
#
# Prevents users from opening the Internet Options dialog box from the Tools menu in Microsoft Internet Explorer.
# 
# If you enable this policy, users cannot change their Internet options, such as default home page, cache size, and connection and proxy settings, from the browser Tools menu. When users click the Internet Options command on the Tools menu, they are informed that the command is unavailable.
# 
# If you disable this policy or do not configure it, users can change their Internet settings from the browser Tools menu.
# 
# Caution: This policy does not prevent users from viewing and changing Internet settings by clicking the Internet Options icon in Windows Control Panel.
# 
# Also, see policies for Internet options in the \Administrative Templates\Windows Components\Internet Explorer and in \Administrative Templates\Windows Components\Internet Explorer\Internet Control Panel folders.
'Tools menu: Disable Internet Options... menu option':
  lgpo.set:
  - name: Tools_Menu
  - setting: Enabled
  - policy_class: User
