# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify the period of inactivity before Windows transitions to sleep automatically when a user is not present at the computer.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows automatically transitions to sleep when left unattended.  If you specify 0 seconds, Windows does not automatically transition to sleep.
# 
# If you disable or do not configure this policy setting, users control this setting.
# 
# If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
Specify the unattended sleep timeout (on battery):
  lgpo.set:
  - name: UnattendedSleepTimeOutDC
  - setting:
      EnterUnattendedSleepTimeOut: decimal-placeholder
  - policy_class: Machine
