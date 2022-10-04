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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Windows Performance PerfTrack\WdiScenarioExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies whether to enable or disable tracking of responsiveness events.
# 
# If you enable this policy setting, responsiveness events are processed and aggregated. The aggregated data will be transmitted to Microsoft through SQM.
# 
# if you disable this policy setting, responsiveness events are not processed.
# 
# If you do not configure this policy setting, the DPS will enable Windows Performance PerfTrack by default.
#       
Enable/Disable PerfTrack:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
