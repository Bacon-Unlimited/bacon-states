# SUPPORTED_IE7
#
# This policy setting specifies whether smooth scrolling is used to display content at a predefined speed.
# 
# If you enable this policy setting, smooth scrolling is turned off. The user cannot turn on smooth scrolling.
# 
# If you disable this policy setting, smooth scrolling is turned on. The user cannot turn off smooth scrolling.
# 
# If you do not configure this policy setting, the user can hide or show the button to open Microsoft Edge from Internet Explorer.
Turn off smooth scrolling:
  lgpo.set:
  - name: SmoothScrolling
  - setting: Enabled
  - policy_class: User
