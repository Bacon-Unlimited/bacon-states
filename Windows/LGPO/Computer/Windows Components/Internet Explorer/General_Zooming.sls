# SUPPORTED_IE7
#
# This policy setting prevents the user from zooming in to or out of a page to better see the content.
# 
# If you enable this policy setting, applications that host MSHTML do not respond to user input that causes the content to be re-rendered at a scaled size.
# 
# If you disable or do not configure this policy setting, applications that host MSHTML respond to user input that causes the content to be re-rendered at a scaled size.
Turn off page-zooming functionality:
  lgpo.set:
  - name: General_Zooming
  - setting: Enabled
  - policy_class: Machine
