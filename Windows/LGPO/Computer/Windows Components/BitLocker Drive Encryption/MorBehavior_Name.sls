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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\MorBehavior_Name.sls
#
# SUPPORTED WINDOWS OS
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
