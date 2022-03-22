# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the text color in Internet Explorer.
# 
# If you enable this policy setting, the user cannot specify the text color in Internet Explorer. You must specify the text color (for example: 192,192,192).
# 
# If you disable or do not configure this policy setting, the user can specify the text color in Internet Explorer.
Prevent specifying text color:
  lgpo.set:
  - name: TextColorPol
  - setting:
      TextColor: text-placeholder
  - policy_class: User
