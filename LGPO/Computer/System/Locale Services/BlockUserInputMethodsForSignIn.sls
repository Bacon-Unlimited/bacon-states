# windows:SUPPORTED_Windows8
#
# 
#         This policy prevents automatic copying of user input methods to the system account for use on the sign-in screen. The user is restricted to the set of input methods that are enabled in the system account.
# 
#         Note this does not affect the availability of user input methods on the lock screen or with the UAC prompt.
# 
#         If the policy is Enabled, then the user will get input methods enabled for the system account on the sign-in page.
# 
#         If the policy is Disabled or Not Configured, then the user will be able to use input methods enabled for their user account on the sign-in page.
Disallow copying of user input methods to the system account for sign-in:
  lgpo.set:
  - name: BlockUserInputMethodsForSignIn
  - setting: Enabled
  - policy_class: Machine
