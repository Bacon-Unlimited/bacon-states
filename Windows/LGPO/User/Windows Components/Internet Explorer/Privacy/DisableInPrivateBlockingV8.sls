# SUPPORTED_IE8ONLY
#
# This policy setting allows you to turn off InPrivate Filtering.
# 
# InPrivate Filtering helps users control whether third parties can automatically collect information about their browsing based on the sites that they visit. InPrivate Filtering does this by identifying third-party content that is used by multiple websites that users have visited.
# 
# If you enable this policy setting, InPrivate Filtering is turned off in all browsing sessions, and InPrivate Filtering data is not collected.
# 
# If you disable this policy setting, InPrivate Filtering is available for use.
# 
# If you do not configure this policy setting, it can be configured through the registry.
Turn off InPrivate Filtering:
  lgpo.set:
  - name: DisableInPrivateBlockingV8
  - setting: Enabled
  - policy_class: User
