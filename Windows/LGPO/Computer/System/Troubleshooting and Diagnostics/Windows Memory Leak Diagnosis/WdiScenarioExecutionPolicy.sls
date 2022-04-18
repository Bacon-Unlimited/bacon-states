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
