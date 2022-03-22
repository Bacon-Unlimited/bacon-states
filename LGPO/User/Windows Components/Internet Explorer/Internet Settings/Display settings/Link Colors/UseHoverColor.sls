# SUPPORTED_IE7
#
# This policy setting makes hyperlinks change color when the mouse pointer pauses on them.
# 
# If you enable this policy setting, the hover color option is turned on. The user cannot turn it off.
# 
# If you disable this policy setting, the hover color option is turned off. The user cannot turn it on.
# 
# If you do not configure this policy setting, the user can turn on or turn off the hover color option.
Turn on the hover color option:
  lgpo.set:
  - name: UseHoverColor
  - setting: Enabled
  - policy_class: User
