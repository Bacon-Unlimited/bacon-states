# SUPPORTED_IE7
#
# This policy setting causes a Notification bar notification to appear when intranet content is loaded and the intranet mapping rules have not been configured. The Notification bar allows the user to enable intranet mappings, if they require them.
# 
# If you enable this policy setting, a Notification bar notification appears whenever the user browses to a page that loads content from an intranet site.
# 
# If you disable this policy setting, a Notification bar notification does not appear when the user loads content from an intranet site that is being treated as though it is in the Internet zone.
# 
# If this policy setting is not configured, a Notification bar notification appears for intranet content loaded on a browser on a computer that is not a domain member, until the user turns off the Notification bar.
Turn on Notification bar notification for intranet content:
  lgpo.set:
  - name: SecurityPage_WarnOnIntranet
  - setting: Enabled
  - policy_class: User
