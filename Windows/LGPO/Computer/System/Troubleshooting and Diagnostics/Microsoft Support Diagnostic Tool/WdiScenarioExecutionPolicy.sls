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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Microsoft Support Diagnostic Tool\WdiScenarioExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the execution level for Microsoft Support Diagnostic Tool.
# 
# Microsoft Support Diagnostic Tool (MSDT) gathers diagnostic data for analysis by support professionals.
# 
# If you enable this policy setting, administrators can use MSDT to collect and send diagnostic data to a support professional to resolve a problem.
# 
# If you disable this policy setting, MSDT cannot gather diagnostic data.
# 
# If you do not configure this policy setting, MSDT is turned on by default.
# 
# This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.
# 
# No reboots or service restarts are required for this policy setting to take effect. Changes take effect immediately.
# 
# This policy setting will only take effect when the Diagnostic Policy Service (DPS) is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
'Microsoft Support Diagnostic Tool: Configure execution level':
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
