# SUPPORTED_IE8_10
#
# This policy setting allows you increase the size of icons for command buttons.
# 
# If you enable this policy setting, icons for command buttons are 20 x 20 pixels and cannot be made smaller (16 x 16 pixels).
# 
# If you disable this policy setting, icons for command buttons are 16 x 16 pixels (the default) and cannot be made bigger (20 x 20 pixels).
# 
# If you do not configure this policy setting, icons for command buttons are 16 x 16 pixels, and the user can make them bigger (20 x 20 pixels).
Use large icons for command buttons:
  lgpo.set:
  - name: UseLargeIcons
  - setting: Enabled
  - policy_class: User
