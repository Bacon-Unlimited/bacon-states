# SUPPORTED_IE7
#
# This policy setting prevents the user from specifying the color to which hyperlinks change when the mouse pointer pauses on them.
# 
# If you enable this policy setting, the user cannot specify the hover color. You must specify the hover color (for example: 192,192,192).
# 
# If you disable or do not configure this policy setting, the user can specify the hover color.
Prevent specifying the hover color:
  lgpo.set:
  - name: AnchorColorHoverPol
  - setting:
      AnchorColorHover: text-placeholder
  - policy_class: User
