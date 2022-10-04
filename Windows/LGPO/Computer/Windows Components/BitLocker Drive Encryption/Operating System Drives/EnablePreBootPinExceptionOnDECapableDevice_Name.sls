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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\EnablePreBootPinExceptionOnDECapableDevice_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS2
#
# This policy setting allows users on devices that are compliant with InstantGo or Microsoft Hardware Security Test Interface (HSTI) to not have a PIN for pre-boot authentication. This overrides the "Require startup PIN with TPM" and "Require startup key and PIN with TPM" options of the "Require additional authentication at startup" policy on compliant hardware.
# 
# If you enable this policy setting, users on InstantGo and HSTI compliant devices will have the choice to turn on BitLocker without pre-boot authentication.
# 
# If this policy is not enabled, the options of "Require additional authentication at startup" policy apply.
#       
Allow devices compliant with InstantGo or HSTI to opt out of pre-boot PIN.:
  lgpo.set:
  - name: EnablePreBootPinExceptionOnDECapableDevice_Name
  - setting: Enabled
  - policy_class: Machine
