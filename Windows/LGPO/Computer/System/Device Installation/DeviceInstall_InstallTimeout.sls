# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the number of seconds Windows waits for a device installation task to complete. 
# 
# If you enable this policy setting, Windows waits for the number of seconds you specify before terminating the installation.
# 
# If you disable or do not configure this policy setting, Windows waits 240 seconds for a device installation task to complete before terminating the installation.
Configure device installation time-out:
  lgpo.set:
  - name: DeviceInstall_InstallTimeout
  - setting:
      DeviceInstall_InstallTimeout_Time: decimal-placeholder
  - policy_class: Machine
