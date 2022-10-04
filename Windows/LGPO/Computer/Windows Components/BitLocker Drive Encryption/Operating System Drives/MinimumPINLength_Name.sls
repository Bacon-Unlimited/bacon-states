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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\MinimumPINLength_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# 
#           This policy setting allows you to configure a minimum length for a Trusted Platform Module (TPM) startup PIN. This policy setting is applied when you turn on BitLocker. The startup PIN must have a minimum length of 4 digits and can have a maximum length of 20 digits.
# 
#           If you enable this policy setting, you can require a minimum number of digits to be used when setting the startup PIN.
# 
#           If you disable or do not configure this policy setting, users can configure a startup PIN of any length between 6 and 20 digits.
# 
#           NOTE: If minimum PIN length is set below 6 digits, Windows will attempt to update the TPM 2.0 lockout period to be greater than the default when a PIN is changed. If successful, Windows will only reset the TPM lockout period back to default if the TPM is reset.
# 
#       
Configure minimum PIN length for startup:
  lgpo.set:
  - name: MinimumPINLength_Name
  - setting:
      MinPINLength: decimal-placeholder
  - policy_class: Machine
