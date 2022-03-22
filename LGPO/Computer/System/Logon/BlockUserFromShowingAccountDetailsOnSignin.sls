# windows:SUPPORTED_Windows_10_0
#
# This policy prevents the user from showing account details (email address or user name) on the sign-in screen.
# 
# If you enable this policy setting, the user cannot choose to show account details on the sign-in screen.
# 
# If you disable or do not configure this policy setting, the user may choose to show account details on the sign-in screen.
Block user from showing account details on sign-in:
  lgpo.set:
  - name: BlockUserFromShowingAccountDetailsOnSignin
  - setting: Enabled
  - policy_class: Machine
