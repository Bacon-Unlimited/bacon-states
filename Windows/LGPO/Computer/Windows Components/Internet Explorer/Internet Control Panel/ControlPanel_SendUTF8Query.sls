# SUPPORTED_IE7
#
# This policy setting allows you to manage whether Internet Explorer uses 8-bit Unicode Transformation Format (UTF-8) for mailto links.
# 
# If you enable this policy setting, Internet Explorer encodes mailto links in UTF-8.
# 
# If you disable or do not configure this policy setting, Internet Explorer sends mailto links encoded through the user's code page. This behavior matches the behavior of Internet Explorer 6 and earlier. The user can change this behavior on the Internet Explorer Tools menu: Click Internet Options, click the Advanced tab, and then under International, select the "Use UTF-8 for mailto links" check box.
Use UTF-8 for mailto links:
  lgpo.set:
  - name: ControlPanel_SendUTF8Query
  - setting: Enabled
  - policy_class: Machine
