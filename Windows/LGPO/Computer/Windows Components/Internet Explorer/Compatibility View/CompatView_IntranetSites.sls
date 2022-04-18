# SUPPORTED_IE8
#
# This policy setting controls how Internet Explorer displays local intranet content. Intranet content is defined as any webpage that belongs to the local intranet security zone.
# 
# If you enable this policy setting, Internet Explorer uses the current user agent string for local intranet content. Additionally, all local intranet Standards Mode pages appear in the Standards Mode available with the latest version of Internet Explorer. The user cannot change this behavior through the Compatibility View Settings dialog box.
# 
# If you disable this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. The user cannot change this behavior through the Compatibility View Settings dialog box.
# 
# If you do not configure this policy setting, Internet Explorer uses an Internet Explorer 7 user agent string (with an additional string appended) for local intranet content. Additionally, all local intranet Standards Mode pages appear in Internet Explorer 7 Standards Mode. This option results in the greatest compatibility with existing webpages, but newer content written to common Internet standards may be displayed incorrectly. This option matches the default behavior of Internet Explorer.
Turn on Internet Explorer Standards Mode for local intranet:
  lgpo.set:
  - name: CompatView_IntranetSites
  - setting: Enabled
  - policy_class: Machine
