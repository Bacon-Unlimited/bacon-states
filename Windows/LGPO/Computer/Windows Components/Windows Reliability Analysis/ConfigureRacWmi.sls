# windows:SUPPORTED_Windows7
#
# This policy setting allows the Windows Management Instrumentation (WMI) providers Win32_ReliabilityStabilitymetrics and Win32_ReliabilityRecords to provide data to Reliability Monitor in the Security and Maintenance control panel, and to respond to WMI requests.
# 
# If you enable or do not configure this policy setting, the listed providers will respond to WMI queries, and Reliability Monitor will display system reliability information.
# 
# If you disable this policy setting, Reliability Monitor will not display system reliability information, and WMI-capable applications will be unable to access reliability information from the listed providers.
Configure Reliability WMI Providers:
  lgpo.set:
  - name: ConfigureRacWmi
  - setting: Enabled
  - policy_class: Machine
