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
# LOCATION: \Computer\Windows Components\File Explorer\DisableRoamedProfileInit.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows administrators who have configured roaming profile in conjunction with Delete Cached Roaming Profile Group Policy setting to ensure that Explorer will not reinitialize default program associations and other settings to default values. 
# 
# If you enable this policy setting on a machine that does not contain all programs installed in the same manner as it was on the machine on which the user had last logged on, unexpected behavior could occur. 
Do not reinitialize a pre-existing roamed user profile when it is loaded on a machine for the first time:
  lgpo.set:
  - name: DisableRoamedProfileInit
  - setting: Enabled
  - policy_class: Machine
