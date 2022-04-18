# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the period of inactivity before Windows turns off the hard disk.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the hard disk.
# 
# If you disable or do not configure this policy setting, users can see and change this setting.
Turn Off the hard disk (plugged in):
  lgpo.set:
  - name: DiskACPowerDownTimeOut_2
  - setting:
      EnterDiskACPowerDownTimeOut: decimal-placeholder
  - policy_class: Machine
