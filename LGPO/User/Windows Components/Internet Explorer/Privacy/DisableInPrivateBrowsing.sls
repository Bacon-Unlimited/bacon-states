# SUPPORTED_IE8
#
# This policy setting allows you to turn off the InPrivate Browsing feature.
# 
# InPrivate Browsing prevents Internet Explorer from storing data about a user's browsing session. This includes cookies, temporary Internet files, history, and other data.
# 
# If you enable this policy setting, InPrivate Browsing is turned off.
# 
# If you disable this policy setting, InPrivate Browsing is available for use.
# 
# If you do not configure this policy setting, InPrivate Browsing can be turned on or off through the registry.
Turn off InPrivate Browsing:
  lgpo.set:
  - name: DisableInPrivateBrowsing
  - setting: Enabled
  - policy_class: User
