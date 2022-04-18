# windows:SUPPORTED_Windows8
#
# This policy setting specifies how long Group Policy should wait for workplace connectivity notifications during startup policy processing. If the startup policy processing is synchronous, the computer is blocked until workplace connectivity is available or the wait time is reached. If the startup policy processing is asynchronous, the computer is not blocked and policy processing will occur in the background. In either case, configuring this policy setting overrides any system-computed wait times.
# 
# If you enable this policy setting, Group Policy uses this administratively configured maximum wait time for workplace connectivity, and overrides any default or system-computed wait time.
# 
# If you disable or do not configure this policy setting, Group Policy will use the default wait time of 60 seconds on computers running Windows operating systems greater than Windows 7 configured for workplace connectivity.
Specify workplace connectivity wait time for policy processing:
  lgpo.set:
  - name: CorpConnSyncWaitTime
  - setting:
      CorpConnSyncWaitTime_Seconds: decimal-placeholder
  - policy_class: Machine
