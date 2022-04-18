# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the background color in Internet Explorer.
# 
# If you enable this policy setting, the user cannot specify the background color in Internet Explorer. You must specify the background color (for example: 192,192,192).
# 
# If you disable or do not configure this policy setting, the user can specify the background color in Internet Explorer.
Prevent specifying background color:
  lgpo.set:
  - name: BackgroundColorPol
  - setting:
      BackgroundColor: text-placeholder
  - policy_class: User
