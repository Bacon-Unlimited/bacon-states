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
