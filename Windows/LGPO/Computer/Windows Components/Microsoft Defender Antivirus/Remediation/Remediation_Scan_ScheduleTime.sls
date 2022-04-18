# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the time of day at which to perform a scheduled full scan in order to complete remediation. The time value is represented as the number of minutes past midnight (00:00).  For example, 120 (0x78) is equivalent to 02:00 AM.  The schedule is based on local time on the computer where the scan is executing.
# 
#     If you enable this setting, a scheduled full scan to complete remediation will run at the time of day specified.
# 
#     If you disable or do not configure this setting, a scheduled full scan to complete remediation will run at a default time.
Specify the time of day to run a scheduled full scan to complete remediation:
  lgpo.set:
  - name: Remediation_Scan_ScheduleTime
  - setting:
      Remediation_Scan_ScheduleTime: decimal-placeholder
  - policy_class: Machine
