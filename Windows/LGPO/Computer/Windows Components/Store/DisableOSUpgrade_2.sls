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
# LOCATION: \Computer\Windows Components\Store\DisableOSUpgrade_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# Enables or disables the Store offer to update to the latest version of Windows.
# 
# If you enable this setting, the Store application will not offer updates to the latest version of Windows.
# 
# If you disable or do not configure this setting the Store application will offer updates to the latest version of Windows.
Turn off the offer to update to the latest version of Windows:
  lgpo.set:
  - name: DisableOSUpgrade_2
  - setting: Enabled
  - policy_class: Machine
