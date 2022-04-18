# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to control whether users can sign in using external security keys.
#       
# If you enable this policy setting, users can sign in with external security keys.
# 
# If you disable or don't configure this policy setting, users can't sign in with external security keys.
Turn on security key sign-in:
  lgpo.set:
  - name: AllowSecurityKeySignIn
  - setting: Enabled
  - policy_class: Machine
