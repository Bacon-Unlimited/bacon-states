# windows:SUPPORTED_Windows_10_0_RS3
#
# This policy setting, in combination with the Allow Telemetry policy setting, enables organizations to send Microsoft a specific set of diagnostic data for IT insights via Windows Analytics services.
# 
# To enable this behavior, you must complete two steps:
# 
#     1. Enable this policy setting
#     2. Set Allow Telemetry to level 2 (Enhanced)
# 
# This setting has no effect on devices configured to send Security or Required diagnostic data to Microsoft. 
# 
# When these policies are configured, diagnostic data collection will be limited to required diagnostic data and the events required by Desktop Analytics.  These events can be viewed at https://go.microsoft.com/fwlink/?linkid=2116020.
# 
# If you disable or don't configure this policy setting, then the level of diagnostic data sent to Microsoft is determined by the Allow Telemetry policy setting if it is configured (e.g. if you enable enhanced diagnostic data via the Allow Telemetry policy setting, but do not configure this policy setting, you'll send the required events for Windows Analytics, plus any additional Enhanced level diagnostic data to Microsoft).
#       
Limit Enhanced diagnostic data to the minimum required by Windows Analytics:
  lgpo.set:
  - name: LimitEnhancedDiagnosticDataWindowsAnalytics
  - setting:
      LimitEnhancedDiagnosticDataWindowsAnalytics: enum-placeholder
  - policy_class: Machine
