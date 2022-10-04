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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\WdiDpsScenarioExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines the execution level for Diagnostic Policy Service (DPS) scenarios.
# 
# If you enable this policy setting, you must select an execution level from the drop-down menu. If you select problem detection and troubleshooting only, the DPS will detect problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken.  If you select detection, troubleshooting and resolution, the DPS will attempt to automatically fix problems it detects or indicate to the user that assisted resolution is available.
# 
# If you disable this policy setting, Windows cannot detect, troubleshoot, or resolve any problems that are handled by the DPS.
# 
# If you do not configure this policy setting, the DPS enables all scenarios for resolution by default, unless you configure separate scenario-specific policy settings.
# 
# This policy setting takes precedence over any scenario-specific policy settings when it is enabled or disabled.  Scenario-specific policy settings only take effect if this policy setting is not configured.
# 
# No reboots or service restarts are required for this policy setting to take effect: changes take effect immediately.
'Diagnostics: Configure scenario execution level':
  lgpo.set:
  - name: WdiDpsScenarioExecutionPolicy
  - setting:
      WdiDpsScenarioExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
