# SUPPORTED_IE7
#
# This policy setting prevents the user from choosing the default text size in Internet Explorer.
# 
# If you enable this policy setting, the user cannot choose the default text size in Internet Explorer. You must specify the default text size:
#      Largest
#      Larger
#      Medium
#      Smaller
#      Smallest
# 
# If you disable or do not configure this policy setting, the user can choose the default text size in Internet Explorer.
Prevent choosing default text size:
  lgpo.set:
  - name: FontSize
  - setting:
      FontSizeDefault: enum-placeholder
  - policy_class: User
