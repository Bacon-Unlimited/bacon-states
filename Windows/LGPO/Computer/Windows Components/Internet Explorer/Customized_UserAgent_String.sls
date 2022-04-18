# SUPPORTED_IE7
#
# This policy setting allows you to customize the Internet Explorer version string as reported to web servers in the HTTP User Agent header.
# 
# If you enable this policy setting, Internet Explorer sends the specified custom string in the version portion of the User Agent header.
# 
# If you disable or do not configure this policy setting, Internet Explorer sends the current Internet Explorer version in the User Agent header (for example, "MSIE 7.0").
Customize user agent string:
  lgpo.set:
  - name: Customized_UserAgent_String
  - setting:
      EnterIEVersionPrompt: text-placeholder
  - policy_class: Machine
