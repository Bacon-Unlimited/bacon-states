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
# LOCATION: \Computer\System\Power Management\Notification Settings\DCBatteryDischargeLevel1UINotification_2.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the user notification when the battery capacity remaining equals the low battery notification level.
# 
# If you enable this policy setting, Windows shows a notification when the battery capacity remaining equals the low battery notification level.  To configure the low battery notification level, see the "Low Battery Notification Level" policy setting.
# 
# The notification will only be shown if the "Low Battery Notification Action" policy setting is configured to "No Action".
# 
# If you disable or do not configure this policy setting, users can control this setting.
Turn off low battery user notification:
  lgpo.set:
  - name: DCBatteryDischargeLevel1UINotification_2
  - setting: Enabled
  - policy_class: Machine
