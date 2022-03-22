# SUPPORTED_Windows_6_3ToVista
#
# This policy setting controls computer restart performance at the risk of exposing BitLocker secrets. This policy setting is applied when you turn on BitLocker. BitLocker secrets include key material used to encrypt data. This policy setting applies only when BitLocker protection is enabled.
# 
# If you enable this policy setting, memory will not be overwritten when the computer restarts. Preventing memory overwrite may improve restart performance but will increase the risk of exposing BitLocker secrets.
# 
# If you disable or do not configure this policy setting, BitLocker secrets are removed from memory when the computer restarts.
# 
#       
Prevent memory overwrite on restart:
  lgpo.set:
  - name: MorBehavior_Name
  - setting: Enabled
  - policy_class: Machine
