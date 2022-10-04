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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\WerBypassDataThrottling_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting determines whether Windows Error Reporting (WER) sends additional, second-level report data even if a CAB file containing data about the same event types has already been uploaded to the server.
# 
# If you enable this policy setting, WER does not throttle data; that is, WER uploads additional CAB files that can contain data about the same event types as an earlier uploaded report.
# 
# If you disable or do not configure this policy setting, WER throttles data by default; that is, WER does not upload more than one CAB file for a report that contains data about the same event types.
Do not throttle additional data:
  lgpo.set:
  - name: WerBypassDataThrottling_2
  - setting: Enabled
  - policy_class: Machine
