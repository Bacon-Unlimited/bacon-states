# SUPPORTED_INTERNET_BROWSER_RS4
#
# This policy setting lets you decide how much data to send to Microsoft about the book you're reading from the Books tab in Microsoft Edge.
# 
# If you enable this setting, Microsoft Edge sends additional telemetry data, on top of the basic telemetry data, from the Books tab.
# 
# If you disable or don't configure this setting, Microsoft Edge only sends basic telemetry data, depending on your device configuration.
Allow extended telemetry for the Books tab:
  lgpo.set:
  - name: EnableExtendedBooksTelemetry
  - setting: Enabled
  - policy_class: User
