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
# LOCATION: \Computer\Windows Components\Shutdown Options\ShutdownTimeoutHungSessionsDescription.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the number of minutes the system waits for the hung logon sessions before proceeding with the system shutdown.
# 
# If you enable this policy setting, the system waits for the hung logon sessions for the number of minutes specified.
# 
# If you disable or do not configure this policy setting, the default timeout value is 3 minutes for workstations and 15 minutes for servers.
Timeout for hung logon sessions during shutdown:
  lgpo.set:
  - name: ShutdownTimeoutHungSessionsDescription
  - setting:
      ShutdownSessionTimeout_Time: decimal-placeholder
  - policy_class: Machine
