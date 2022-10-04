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
# LOCATION: \Computer\System\ShutdownEventTrackerStateFile.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsNETOnly
#
# This policy setting defines when the Shutdown Event Tracker System State Data feature is activated.
# 
# The system state data file contains information about the basic system state as well as the state of all running processes.
# 
# If you enable this policy setting, the System State Data feature is activated when the user indicates that the shutdown or restart is unplanned.
# 
# If you disable this policy setting, the System State Data feature is never activated.
# 
# If you do not configure this policy setting, the default behavior for the System State Data feature occurs.
# 
# Note: By default, the System State Data feature is always enabled on Windows Server 2003. See "Supported on" for all supported versions.
Activate Shutdown Event Tracker System State Data feature:
  lgpo.set:
  - name: ShutdownEventTrackerStateFile
  - setting: Enabled
  - policy_class: Machine
