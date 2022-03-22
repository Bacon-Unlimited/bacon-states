# windows:SUPPORTED_Windows_10_0_RS4
#
# This policy setting determines whether an end user can change telemetry levels in Settings.
# 
# If you set this policy setting to "Disable Telemetry opt-in Settings", telemetry levels are disabled in Settings, and prevents end users from changing them.
# 
# If you don’t configure this policy setting, or you set it to "Enable Telemetry opt-in Settings”, end users can change the device telemetry level in the Settings app.
# 
# Note:
# To set a limit on the level of diagnostic data that is sent to Microsoft by your organization, use the Allow Telemetry policy setting.
#       
Configure telemetry opt-in setting user interface.:
  lgpo.set:
  - name: ConfigureTelemetryOptInSettingsUx
  - setting:
      ConfigureTelemetryOptInSettingsUx: enum-placeholder
  - policy_class: Machine
