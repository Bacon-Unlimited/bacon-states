# SUPPORTED_IE7
#
# This policy setting specifies whether, when there is a problem connecting with an Internet server, to provide a detailed description with hints about how to correct the problem. If you clear this check box, the user sees only the error code and the name of the error.
# 
# If you enable this policy setting, when there is a problem connecting with an Internet server, the user does not see a detailed description or hints about how to correct the problem. The user cannot change this policy setting.
# 
# If you disable this policy setting, when there is a problem connecting with an Internet server, the user sees a detailed description with hints about how to correct the problem. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can turn on or turn off details in these error messages.
Turn off details in messages about Internet connection problems:
  lgpo.set:
  - name: FriendlyErrorText
  - setting: Enabled
  - policy_class: User
