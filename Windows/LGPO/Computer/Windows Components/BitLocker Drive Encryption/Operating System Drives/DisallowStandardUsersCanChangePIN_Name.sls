# SUPPORTED_Windows8NoARM
#
# This policy setting allows you to configure whether or not standard users are allowed to change BitLocker volume PINs, provided they are able to provide the existing PIN first.
# 
# This policy setting is applied when you turn on BitLocker.
# 
# If you enable this policy setting, standard users will not be allowed to change BitLocker PINs or passwords.
# 
# If you disable or do not configure this policy setting, standard users will be permitted to change BitLocker PINs and passwords.
# 
#       
Disallow standard users from changing the PIN or password:
  lgpo.set:
  - name: DisallowStandardUsersCanChangePIN_Name
  - setting: Enabled
  - policy_class: Machine
