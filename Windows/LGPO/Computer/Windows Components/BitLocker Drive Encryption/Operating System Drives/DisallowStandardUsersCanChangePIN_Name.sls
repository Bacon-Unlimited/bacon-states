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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\DisallowStandardUsersCanChangePIN_Name.sls
#
# SUPPORTED WINDOWS OS
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
