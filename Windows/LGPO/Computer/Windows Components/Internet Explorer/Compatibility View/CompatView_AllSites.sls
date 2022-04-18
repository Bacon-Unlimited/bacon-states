# SUPPORTED_IE8_10
#
# This policy setting allows you to turn on Internet Explorer 7 Standards Mode. Compatibility View determines how Internet Explorer identifies itself to a web server and determines whether content is rendered in Internet Explorer 7 Standards Mode or the Standards Mode available in the latest version of Internet Explorer.
# 
# If you enable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended). Additionally, all Standards Mode webpages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly.
# 
# If you disable this policy setting, Internet Explorer uses a current user agent string. Additionally, all Standards Mode webpages appear in the Standards Mode available in the latest version of Internet Explorer. This option matches the default behavior of Internet Explorer.
# 
# If you do not configure this policy setting, the user can turn on and turn off Internet Explorer 7 Standards Mode.
Turn on Internet Explorer 7 Standards Mode:
  lgpo.set:
  - name: CompatView_AllSites
  - setting: Enabled
  - policy_class: Machine
