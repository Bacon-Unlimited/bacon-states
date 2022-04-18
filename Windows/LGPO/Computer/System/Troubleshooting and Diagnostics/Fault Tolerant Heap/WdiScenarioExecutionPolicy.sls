# windows:SUPPORTED_Windows7
#
# This policy setting permits or prohibits the Diagnostic Policy Service (DPS) from automatically resolving any heap corruption problems.
# 
# If you enable this policy setting, the DPS detects, troubleshoots, and attempts to resolve automatically any heap corruption problems.
# 
# If you disable this policy setting, Windows cannot detect, troubleshoot, and attempt to resolve automatically any heap corruption problems that are handled by the DPS.
# 
# If you do not configure this policy setting, the DPS enables Fault Tolerant Heap for resolution by default.
# 
# This policy setting takes effect only if the diagnostics-wide scenario execution policy is not configured.
# 
# This policy setting takes effect only when the Diagnostic Policy Service is in the running state. When the service is stopped or disabled, diagnostic scenarios are not executed. The DPS can be configured with the Services snap-in to the Microsoft Management Console.
# 
# No system restart or service restart is required for this policy setting to take effect: changes take effect immediately.
Configure Scenario Execution Level:
  lgpo.set:
  - name: WdiScenarioExecutionPolicy
  - setting: Enabled
  - policy_class: Machine
