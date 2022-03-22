# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the time of day at which to perform a scheduled scan. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM. By default, this setting is set to  a time value of 2:00 AM. The schedule is based on local time on the computer where the scan is executing.
# 
#     If you enable this setting, a scheduled scan will run at the time of day specified.
# 
#     If you disable or do not configure this setting, a scheduled scan will run at a default time.
Specify the time of day to run a scheduled scan:
  lgpo.set:
  - name: Scan_ScheduleTime
  - setting:
      Scan_ScheduleTime: decimal-placeholder
  - policy_class: Machine
