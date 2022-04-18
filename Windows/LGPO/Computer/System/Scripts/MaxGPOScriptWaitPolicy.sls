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
