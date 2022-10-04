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
# LOCATION: \Computer\Windows Components\Windows Update\AutoRestartNotificationDisable.sls
#
# SUPPORTED WINDOWS OS
# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# This policy setting allows you to control whether users receive notifications for auto restarts for update installations including reminder and warning notifications.
# 
# Enable this policy to turn off all auto restart notifications.
# 
# If you disable or do not configure this policy, the default notification behaviors will be unchanged.
#       
Turn off auto-restart notifications for update installations:
  lgpo.set:
  - name: AutoRestartNotificationDisable
  - setting: Enabled
  - policy_class: Machine
