# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the period of inactivity before Windows transitions the system to hibernate.
# 
# If you enable this policy setting, you must provide a value, in seconds, indicating how much idle time should elapse before Windows transitions to hibernate.
# 
# If you disable or do not configure this policy setting, users control this setting.
# 
# If the user has configured a slide show to run on the lock screen when the machine is locked, this can prevent the sleep transition from occuring.  The "Prevent enabling lock screen slide show" policy setting can be used to disable the slide show feature.
Specify the system hibernate timeout (on battery):
  lgpo.set:
  - name: DCHibernateTimeOut_2
  - setting:
      EnterDCHibernateTimeOut: decimal-placeholder
  - policy_class: Machine
