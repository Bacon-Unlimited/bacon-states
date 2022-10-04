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
# LOCATION: \Computer\System\VerboseStatus.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to display highly detailed status messages.
# 
# This policy setting is designed for advanced users who require this information.
# 
# If you enable this policy setting, the system displays status messages that reflect each step in the process of starting, shutting down, logging on, or logging off the system.
# 
# If you disable or do not configure this policy setting, only the default status messages are displayed to the user during these processes.
# 
# Note: This policy setting is ignored if the ""Remove Boot/Shutdown/Logon/Logoff status messages"" policy setting is enabled.
Display highly detailed status messages:
  lgpo.set:
  - name: VerboseStatus
  - setting: Enabled
  - policy_class: Machine
