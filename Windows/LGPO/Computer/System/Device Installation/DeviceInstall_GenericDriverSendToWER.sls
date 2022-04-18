# windows:SUPPORTED_Windows_10_0_RS3ToVista
#
# Windows has a feature that sends "generic-driver-installed" reports through the Windows Error Reporting infrastructure. This policy allows you to disable the feature.
# 
# If you enable this policy setting, an error report is not sent when a generic driver is installed.
# 
# If you disable or do not configure this policy setting, an error report is sent when a generic driver is installed.
Do not send a Windows error report when a generic driver is installed on a device:
  lgpo.set:
  - name: DeviceInstall_GenericDriverSendToWER
  - setting: Enabled
  - policy_class: Machine
