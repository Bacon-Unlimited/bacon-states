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
# LOCATION: \Computer\System\Scripts\MaxGPOScriptWaitPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting determines how long the system waits for scripts applied by Group Policy to run. 
# 
# This setting limits the total time allowed for all logon, logoff, startup, and shutdown scripts applied by Group Policy to finish running. If the scripts have not finished running when the specified time expires, the system stops script processing and records an error event.
# 
# If you enable this setting, then, in the Seconds box, you can type a number from 1 to 32,000 for the number of seconds you want the system to wait for the set of scripts to finish. To direct the system to wait until the scripts have finished, no matter how long they take, type 0. 
# 
# This interval is particularly important when other system tasks must wait while the scripts complete. By default, each startup script must complete before the next one runs. Also, you can use the ""Run logon scripts synchronously"" setting to direct the system to wait for the logon scripts to complete before loading the desktop. 
# 
# An excessively long interval can delay the system and inconvenience users. However, if the interval is too short, prerequisite tasks might not be done, and the system can appear to be ready prematurely.
# 
# If you disable or do not configure this setting the system lets the combined set of scripts run for up to 600 seconds (10 minutes). This is the default.
Specify maximum wait time for Group Policy scripts:
  lgpo.set:
  - name: MaxGPOScriptWaitPolicy
  - setting:
      MaxGPOScriptWait: decimal-placeholder
  - policy_class: Machine
