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
# LOCATION: \Computer\Windows Components\Application Compatibility\AppCompatTurnOffUserActionRecord.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting controls the state of Steps Recorder.
# 
# Steps Recorder keeps a record of steps taken by the user. The data generated by Steps Recorder can be used in feedback systems such as Windows Error Reporting to help developers understand and fix problems. The data includes user actions such as keyboard input and mouse input, user interface data, and screen shots.  Steps Recorder includes an option to turn on and off data collection.
# 
# If you enable this policy setting, Steps Recorder will be disabled.
# 
# If you disable or do not configure this policy setting, Steps Recorder will be enabled.
Turn off Steps Recorder:
  lgpo.set:
  - name: AppCompatTurnOffUserActionRecord
  - setting: Enabled
  - policy_class: Machine