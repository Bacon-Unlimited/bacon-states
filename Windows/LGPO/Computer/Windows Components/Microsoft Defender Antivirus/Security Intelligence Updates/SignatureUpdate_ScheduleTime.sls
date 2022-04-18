# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the time of day at which to check for security intelligence updates. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM. By default this setting is configured to check for security intelligence updates 15 minutes before the scheduled scan time. The schedule is based on local time on the computer where the check is occurring.
# 
#     If you enable this setting, the check for security intelligence updates will occur at the time of day specified.
# 
#     If you disable or do not configure this setting,  the check for security intelligence updates will occur at the default time.
Specify the time to check for security intelligence updates:
  lgpo.set:
  - name: SignatureUpdate_ScheduleTime
  - setting:
      SignatureUpdate_ScheduleTime: decimal-placeholder
  - policy_class: Machine
