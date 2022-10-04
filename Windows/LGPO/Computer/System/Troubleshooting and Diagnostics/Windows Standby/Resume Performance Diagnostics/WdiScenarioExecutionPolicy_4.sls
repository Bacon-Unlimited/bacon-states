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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Windows Standby\Resume Performance Diagnostics\WdiScenarioExecutionPolicy_4.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# Determines the execution level for Windows Standby/Resume Performance Diagnostics.
# 
# If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Standby/Resume Performance problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows Standby/Resume Performance problems and indicate to the user that assisted resolution is available.
# 
# If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows Standby/Resume Performance problems that are handled by the DPS.
# 
# If you do not configure this policy setting, the DPS will enable Windows Standby/Resume Performance for resolution by default.
# 
# This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.
# 
# No system restart or service restart is required for this policy to take effect: changes take effect immediately.
# 
# This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.
Configure Scenario Execution Level:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy_4
  - setting:
      WdiScenarioExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
