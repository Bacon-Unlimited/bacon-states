# windows:SUPPORTED_Windows8
#
# This policy setting allows you to choose specific Boot Configuration Data (BCD) settings to verify during platform validation.
# 
# If you enable this policy setting, you will be able to add additional settings, remove the default settings, or both.
# 
# If you disable this policy setting, the computer will revert to a BCD profile similar to the default BCD profile used by Windows 7.
# 
# If you do not configure this policy setting, the computer will verify the default Windows BCD settings. 
# 
# Note: When BitLocker is using Secure Boot for platform and Boot Configuration Data (BCD) integrity validation, as defined by the "Allow Secure Boot for integrity validation" group policy, the "Use enhanced Boot Configuration Data validation profile" group policy is ignored.
# 
# The setting that controls boot debugging (0x16000010) will always be validated and will have no effect if it is included in the provided fields.
#       
Use enhanced Boot Configuration Data validation profile:
  lgpo.set:
  - name: UseEnhancedBcdProfile_Name
  - setting:
      EnhancedBcdProfile_AdditionalExcludedSettings: multiText-placeholder
      EnhancedBcdProfile_AdditionalSecurityCriticalSettings: multiText-placeholder
  - policy_class: Machine
