# SUPPORTED_IE7
#
# This policy setting prevents users from having Internet Explorer automatically discover whether a feed or Web Slice is available for an associated webpage.
# 
# If you enable this policy setting, the user does not receive a notification on the toolbar that a feed or Web Slice is available.
# 
# If you disable or do not configure this policy setting, the user receives a notification when a feed or Web Slice is available and can click the feed discovery button.
Prevent automatic discovery of feeds and Web Slices:
  lgpo.set:
  - name: Disable_Feed_Discovery
  - setting: Enabled
  - policy_class: Machine
