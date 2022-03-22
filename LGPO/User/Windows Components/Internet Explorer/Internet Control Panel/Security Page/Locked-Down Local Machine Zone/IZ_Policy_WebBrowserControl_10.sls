# SUPPORTED_IE7
#
# This policy setting determines whether a page can control embedded WebBrowser controls via script.
# 
# If you enable this policy setting, script access to the WebBrowser control is allowed.
# 
# If you disable this policy setting, script access to the WebBrowser control is not allowed.
# 
# If you do not configure this policy setting, the user can enable or disable script access to the WebBrowser control. By default, script access to the WebBrowser control is allowed only in the Local Machine and Intranet zones.
Allow scripting of Internet Explorer WebBrowser controls:
  lgpo.set:
  - name: IZ_Policy_WebBrowserControl_10
  - setting:
      IZ_Partname1206: enum-placeholder
  - policy_class: User
