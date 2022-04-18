# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#           This policy setting controls whether a device shows notifications about telemetry levels to people on first logon or when changes occur in Settings.
#           If you set this policy setting to "Disable telemetry change notifications", telemetry level notifications stop appearing.
#           If you set this policy setting to "Enable telemetry change notifications" or don't configure this policy setting, telemetry notifications appear at first logon and when changes occur in Settings.
#       
Configure telemetry opt-in change notifications.:
  lgpo.set:
  - name: ConfigureTelemetryOptInChangeNotification
  - setting:
      ConfigureTelemetryOptInChangeNotification: enum-placeholder
  - policy_class: Machine
