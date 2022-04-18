# SUPPORTED_IE9
#
# This policy setting allows you to turn off Tracking Protection.
# 
# Tracking Protection helps users control whether third parties can automatically collect information about their browsing based on the sites that they visit. Tracking Protection does this by identifying third-party content that is used by multiple websites that users have visited.
# 
# If you enable this policy setting, Tracking Protection is disabled in all browsing sessions, and Tracking Protection data is not collected.
# 
# If you disable this policy setting, Tracking Protection is available for use.
# 
# If you do not configure this policy setting, it can be configured through the registry.
Turn off Tracking Protection:
  lgpo.set:
  - name: DisableInPrivateBlockingV9
  - setting: Enabled
  - policy_class: Machine
