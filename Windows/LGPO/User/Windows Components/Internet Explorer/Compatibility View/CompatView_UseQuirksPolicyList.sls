# SUPPORTED_IE8
#
# Compatibility View determines how Internet Explorer identifies itself to a web server and determines whether content is rendered in Quirks Mode or the Standards Mode available in the latest version of Internet Explorer.
# 
# If you enable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended). Additionally, webpages included in this list appear in Quirks Mode.
Use Policy List of Quirks Mode sites:
  lgpo.set:
  - name: CompatView_UseQuirksPolicyList
  - setting:
      QuirksMode_SiteList:
      - placeholder1
      - placeholder2
  - policy_class: User
