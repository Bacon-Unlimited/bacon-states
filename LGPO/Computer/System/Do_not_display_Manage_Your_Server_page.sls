# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to turn off the automatic display of the Manage Your Server page. 
# 
# If you enable this policy setting, the Manage Your Server page is not displayed each time an administrator logs on to the server. 
# 
# If you disable or do not configure this policy setting, the Manage Your Server page is displayed each time an administrator logs on to the server. However, if the administrator has selected the "Don’t display this page at logon" option at the bottom of the Manage Your Server page, the page is not displayed.
# 
Do not display Manage Your Server page at logon:
  lgpo.set:
  - name: Do_not_display_Manage_Your_Server_page
  - setting: Enabled
  - policy_class: Machine
