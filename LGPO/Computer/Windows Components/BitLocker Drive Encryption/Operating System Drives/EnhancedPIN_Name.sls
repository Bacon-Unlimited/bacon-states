# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure whether or not enhanced startup PINs are used with BitLocker.
# 
# Enhanced startup PINs permit the use of characters including uppercase and lowercase letters, symbols, numbers, and spaces. This policy setting is applied when you turn on BitLocker.
# 
# If you enable this policy setting, all new BitLocker startup PINs set will be enhanced PINs.
# 
# Note:   Not all computers may support enhanced PINs in the pre-boot environment. It is strongly recommended that users perform a system check during BitLocker setup.
# 
# If you disable or do not configure this policy setting, enhanced PINs will not be used.
# 
#       
Allow enhanced PINs for startup:
  lgpo.set:
  - name: EnhancedPIN_Name
  - setting: Enabled
  - policy_class: Machine
