# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Use this policy setting to configure the use of uppercase letters in the PIN.
# 
# If you enable this policy setting, Windows requires the user to include at least one uppercase letter in their PIN.
# 
# If you disable this policy setting, Windows does not allow the user to include uppercase letters in their PIN.
# 
# If you do not configure this policy setting, Windows allows, but does not require, uppercase letters in the PIN.
#         
Require uppercase letters:
  lgpo.set:
  - name: MSPassport_UppercaseLetters
  - setting: Enabled
  - policy_class: Machine
