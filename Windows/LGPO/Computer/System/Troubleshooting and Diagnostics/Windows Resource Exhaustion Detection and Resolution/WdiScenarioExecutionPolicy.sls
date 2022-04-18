# windows:SUPPORTED_WindowsVista
#
# Determines the execution level for Windows Resource Exhaustion Detection and Resolution.
# 
# If you enable this policy setting, you must select an execution level from the dropdown menu. If you select problem detection and troubleshooting only, the Diagnostic Policy Service (DPS) will detect Windows Resource Exhaustion problems and attempt to determine their root causes. These root causes will be logged to the event log when detected, but no corrective action will be taken. If you select detection, troubleshooting and resolution, the DPS will detect Windows Resource Exhaustion problems and indicate to the user that assisted resolution is available.
# 
# If you disable this policy setting, Windows will not be able to detect, troubleshoot or resolve any Windows Resource Exhaustion problems that are handled by the DPS.
# 
# If you do not configure this policy setting, the DPS will enable Windows Resource Exhaustion for resolution by default.
# 
# This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.
# 
# No system restart or service restart is required for this policy to take effect: changes take effect immediately.
# 
# This policy setting will only take effect when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios will not be executed.  The DPS can be configured with the Services snap-in to the Microsoft Management Console.
Configure Scenario Execution Level:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting:
      WdiScenarioExecutionPolicyLevel: enum-placeholder
  - policy_class: Machine
