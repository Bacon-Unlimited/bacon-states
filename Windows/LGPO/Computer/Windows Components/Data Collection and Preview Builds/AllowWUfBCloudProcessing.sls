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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\AllowWUfBCloudProcessing.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS7
#
# 
#           Allows IT admins to enable diagnostic data from this device to be processed by Windows Update for Business cloud. 
#             The following list shows the supported values:  
#               0 (default) Diagnostic data is not processed by Windows Update for Business cloud.. 
#               8  Diagnostic data is allowed to be processed by Windows Update for Business cloud.. 
#           If you disable or do not configure this policy setting, diagnostic data from this device will not be processed by Windows Update for Business cloud. 
#       
Allow WUfB Cloud Processing:
  lgpo.set:
  - name: AllowWUfBCloudProcessing
  - setting: Enabled
  - policy_class: Machine
