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
# LOCATION: \Computer\Windows Components\Data Collection and Preview Builds\DisableDeviceDelete.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#           This policy setting controls whether the Delete diagnostic data button is enabled in Diagnostic & Feedback Settings page.
#           If you enable this policy setting, the Delete diagnostic data button will be disabled in Settings page, preventing the deletion of diagnostic data collected by Microsoft from the device. 
#           If you disable or don't configure this policy setting, the Delete diagnostic data button will be enabled in Settings page, which allows people to erase all diagnostic data collected by Microsoft from that device.
#       
'Disable deleting diagnostic data ':
  lgpo.set:
  - name: DisableDeviceDelete
  - setting: Enabled
  - policy_class: Machine
