# SUPPORTED_IE5_8
#
# This policy setting specifies if, as you move from one Web page to another, Internet Explorer fades out of the page you are leaving and fades into the page to which you are going.
# 
# If you enable this policy setting, page transitions will be turned off. The user cannot change this behavior.
# 
# If you disable this policy setting, page transitions will be turned on. The user cannot change this behavior.
# 
# If you do not configure this policy setting, the user can turn on or off page transitions.
# 
# This feature only applies to versions of Internet Explorer up to and including Internet Explorer 8.
Turn off page transitions:
  lgpo.set:
  - name: PageTransitions
  - setting: Enabled
  - policy_class: User
