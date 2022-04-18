# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies how long Group Policy should wait for network availability notifications during startup policy processing. If the startup policy processing is synchronous, the computer is blocked until the network is available or the default wait time is reached. If the startup policy processing is asynchronous, the computer is not blocked and policy processing will occur in the background. In either case, configuring this policy setting overrides any system-computed wait times.
# 
# If you enable this policy setting, Group Policy will use this administratively configured maximum wait time and override any default or system-computed wait time.
# 
# If you disable or do not configure this policy setting, Group Policy will use the default wait time of 30 seconds on computers running Windows Vista operating system.
# 
Specify startup policy processing wait time:
  lgpo.set:
  - name: SyncWaitTime
  - setting:
      SyncWaitTime_Minutes: decimal-placeholder
  - policy_class: Machine
