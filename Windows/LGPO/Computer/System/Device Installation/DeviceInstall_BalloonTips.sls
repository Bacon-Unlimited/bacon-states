# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn off "Found New Hardware" balloons during device installation.
# 
# If you enable this policy setting, "Found New Hardware" balloons do not appear while a device is being installed.
# 
# If you disable or do not configure this policy setting, "Found New Hardware" balloons appear while a device is being installed, unless the driver for the device suppresses the balloons.
Turn off "Found New Hardware" balloons during device installation:
  lgpo.set:
  - name: DeviceInstall_BalloonTips
  - setting: Enabled
  - policy_class: Machine
