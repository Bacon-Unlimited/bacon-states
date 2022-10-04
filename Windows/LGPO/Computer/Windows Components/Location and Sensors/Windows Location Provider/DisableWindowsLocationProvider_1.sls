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
# LOCATION: \Computer\Windows Components\Location and Sensors\Windows Location Provider\DisableWindowsLocationProvider_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8_Or_Windows_6_3_Only
#
# 
#         This policy setting turns off the Windows Location Provider feature for this computer.
# 
#         If you enable this policy setting, the Windows Location Provider feature will be turned off, and all programs on this computer will not be able to use the Windows Location Provider feature.
# 
#         If you disable or do not configure this policy setting, all programs on this computer can use the Windows Location Provider feature.
Turn off Windows Location Provider:
  lgpo.set:
  - name: DisableWindowsLocationProvider_1
  - setting: Enabled
  - policy_class: Machine
