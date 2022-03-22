# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the period of inactivity before Windows automatically reduces brightness of the display.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically reduces the brightness of the display.
# 
# Windows will only reduce the brightness of the primary display integrated into the computer.
# 
# If you disable or do not configure this policy setting, users control this setting.
Reduce display brightness (on battery):
  lgpo.set:
  - name: DisplayDimTimeOutDC
  - setting:
      EnterDisplayDimTimeOut: decimal-placeholder
  - policy_class: Machine
