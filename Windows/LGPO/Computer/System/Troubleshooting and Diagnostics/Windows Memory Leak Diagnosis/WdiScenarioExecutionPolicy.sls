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
# LOCATION: \Computer\System\Troubleshooting and Diagnostics\Windows Memory Leak Diagnosis\WdiScenarioExecutionPolicy.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting determines whether Diagnostic Policy Service (DPS) diagnoses memory leak problems.
# 
# If you enable or do not configure this policy setting, the DPS enables Windows Memory Leak Diagnosis by default.
# 
# If you disable this policy setting, the DPS is not able to diagnose memory leak problems.
# 
# This policy setting takes effect only under the following conditions: 
# -- If the diagnostics-wide scenario execution policy is not configured. 
# -- When the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed.
# 
# Note: The DPS can be configured with the Services snap-in to the Microsoft Management Console.
# 
# No operating system restart or service restart is required for this policy to take effect. Changes take effect immediately.
Configure Scenario Execution Level:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
