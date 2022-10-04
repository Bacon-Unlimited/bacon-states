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
# LOCATION: \Computer\System\Power Management\Notification Settings\DCBatteryDischargeLevel0_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the percentage of battery capacity remaining that triggers the critical battery notification action.
# 
# If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the critical notification.
# 
# To set the action that is triggered, see the "Critical Battery Notification Action" policy setting.
# 
# If you disable this policy setting or do not configure it, users control this setting.
Critical battery notification level:
  lgpo.set:
  - name: DCBatteryDischargeLevel0_2
  - setting:
      EnterDCBatteryDischargeLevel0: decimal-placeholder
  - policy_class: Machine
