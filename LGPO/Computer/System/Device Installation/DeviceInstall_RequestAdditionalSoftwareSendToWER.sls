# windows:SUPPORTED_Windows_10_0_RS3ToWindows7
#
# Windows has a feature that allows a device driver to request additional software through the Windows Error Reporting infrastructure. This policy allows you to disable the feature.
# 
# If you enable this policy setting, Windows will not send an error report to request additional software even if this is specified by the device driver.
# 
# If you disable or do not configure this policy setting, Windows sends an error report when a device driver that requests additional software is installed.
Prevent Windows from sending an error report when a device driver requests additional software during installation:
  lgpo.set:
  - name: DeviceInstall_RequestAdditionalSoftwareSendToWER
  - setting: Enabled
  - policy_class: Machine
