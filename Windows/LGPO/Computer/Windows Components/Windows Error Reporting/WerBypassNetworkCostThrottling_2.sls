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
# LOCATION: \Computer\Windows Components\Windows Error Reporting\WerBypassNetworkCostThrottling_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that is sent over the network.
# 
# If you enable this policy setting, WER does not check for network cost policy restrictions, and transmits data even if network cost is restricted.
# 
# If you disable or do not configure this policy setting, WER does not send data, but will check the network cost policy again if the network profile is changed.
Send data when on connected to a restricted/costed network:
  lgpo.set:
  - name: WerBypassNetworkCostThrottling_2
  - setting: Enabled
  - policy_class: Machine
