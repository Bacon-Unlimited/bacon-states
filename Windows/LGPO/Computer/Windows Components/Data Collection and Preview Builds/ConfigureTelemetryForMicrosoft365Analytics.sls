# SUPPORTED_INTERNET_BROWSER_RS4
#
# You can configure Microsoft Edge to send intranet history only, internet history only, or both to Desktop Analytics for enterprise devices with a configured Commercial ID. If disabled or not configured, Microsoft Edge does not send browsing history data to Desktop Analytics.
# 
# Supported versions: Microsoft Edge on Windows 10, version 1809
# Default setting: Disabled or not configured (no data collected or sent)
Configure collection of browsing data for Desktop Analytics:
  lgpo.set:
  - name: ConfigureTelemetryForMicrosoft365Analytics
  - setting:
      ZonesListBox: enum-placeholder
  - policy_class: Machine
