# windows:SUPPORTED_Windows7
#
# The policy controls the state of the Application Telemetry engine in the system.
# 
# Application Telemetry is a mechanism that tracks anonymous usage of specific Windows system components by applications.
# 
# Turning Application Telemetry off by selecting "enable" will stop the collection of usage data.
# 
# If the customer Experience Improvement program is turned off, Application Telemetry will be turned off regardless of how this policy is set.
# 
# Disabling telemetry will take effect on any newly launched applications. To ensure that telemetry collection has stopped for all applications, please reboot your machine.
Turn off Application Telemetry:
  lgpo.set:
  - name: AppCompatTurnOffApplicationImpactTelemetry
  - setting: Enabled
  - policy_class: Machine
