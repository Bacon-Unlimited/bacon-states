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
# LOCATION: \Computer\Windows Components\Event Log Service\System\Channel_Log_Retention_4.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls Event Log behavior when the log file reaches its maximum size.
# 
# If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.
# 
# If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.
# 
# Note: Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
Control Event Log behavior when the log file reaches its maximum size:
  lgpo.set:
  - name: Channel_Log_Retention_4
  - setting: Enabled
  - policy_class: Machine
