# SUPPORTED_IE8
#
# This policy setting determines whether the user can bypass warnings from SmartScreen Filter. SmartScreen Filter prevents the user from browsing to or downloading from sites that are known to host malicious content. SmartScreen Filter also prevents the execution of files that are known to be malicious.
# 
# If you enable this policy setting, SmartScreen Filter warnings block the user.
# 
# If you disable or do not configure this policy setting, the user can bypass SmartScreen Filter warnings.
Prevent bypassing SmartScreen Filter warnings:
  lgpo.set:
  - name: DisableSafetyFilterOverride
  - setting: Enabled
  - policy_class: User
