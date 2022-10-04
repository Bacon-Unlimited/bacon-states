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
# LOCATION: \Computer\Windows Components\Windows Hello for Business\MSPassport_UseBiometrics.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# Windows Hello for Business enables users to use biometric gestures, such as face and fingerprints, as an alternative to the PIN gesture. However users must still configure a PIN to use in case of failures.
# 
# If you enable or do not configure this policy setting, Windows Hello for Business allows the use biometric gestures.
# 
# If you disable this policy setting, Windows Hello for Business prevents the use of biometric gestures.
# 
# NOTE: Disabling this policy prevents the user of biometric gestures on the device for all account types.
#         
Use biometrics:
  lgpo.set:
  - name: MSPassport_UseBiometrics
  - setting: Enabled
  - policy_class: Machine
