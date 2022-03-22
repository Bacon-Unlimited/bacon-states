# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the period of inactivity before Windows turns off the display.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows turns off the display.
# 
# If you disable or do not configure this policy setting, users control this setting.
# 
# If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the display from turning off.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
Turn off the display (plugged in):
  lgpo.set:
  - name: VideoPowerDownTimeOutAC_2
  - setting:
      EnterVideoACPowerDownTimeOut: decimal-placeholder
  - policy_class: Machine
