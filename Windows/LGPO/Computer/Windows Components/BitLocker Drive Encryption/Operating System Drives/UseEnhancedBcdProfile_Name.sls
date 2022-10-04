####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\UseEnhancedBcdProfile_Name.sls
#
# SUPPORTED WINDOWS OS
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
