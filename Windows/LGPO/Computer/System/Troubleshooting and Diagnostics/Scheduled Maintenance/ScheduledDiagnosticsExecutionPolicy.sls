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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Scheduled Maintenance\ScheduledDiagnosticsExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# Determines whether scheduled diagnostics will run to proactively detect and resolve system problems.
# 
# If you enable this policy setting, you must choose an execution level.  If you choose detection and troubleshooting only, Windows will periodically detect and troubleshoot problems.  The user will be notified of the problem for interactive resolution. 
# 
# If you choose detection, troubleshooting and resolution, Windows will resolve some of these problems silently without requiring user input.
# 
# If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve problems on a scheduled basis.
# 
# If you do not configure this policy setting, local troubleshooting preferences will take precedence, as configured in the control panel.  If no local troubleshooting preference is configured, scheduled diagnostics are enabled for detection, troubleshooting and resolution by default.
# 
# No reboots or service restarts are required for this policy to take effect: changes take effect immediately.
# 
# This policy setting will only take effect when the Task Scheduler service is in the running state.  When the service is stopped or disabled, scheduled diagnostics will not be executed.  The Task Scheduler service can be configured with the Services snap-in to the Microsoft Management Console.
Configure Scheduled Maintenance Behavior:
  lgpo.set:
  - name: ScheduledDiagnosticsExecutionPolicy
  - setting:
      ScheduledDiagnosticsExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
