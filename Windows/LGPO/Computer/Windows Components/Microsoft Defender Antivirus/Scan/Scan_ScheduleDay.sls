# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the day of the week on which to perform a scheduled scan. The scan can also be configured to run every day or to never run at all.
# 
#     This setting can be configured with the following ordinal number values:
#     (0x0) Every Day
#     (0x1) Sunday 
#     (0x2) Monday
#     (0x3) Tuesday
#     (0x4) Wednesday
#     (0x5) Thursday
#     (0x6) Friday
#     (0x7) Saturday
#     (0x8) Never (default)
# 
#     If you enable this setting, a scheduled scan will run at the frequency specified.
# 
#     If you disable or do not configure this setting, a scheduled scan will run at a default frequency.
Specify the day of the week to run a scheduled scan:
  lgpo.set:
  - name: Scan_ScheduleDay
  - setting:
      Scan_ScheduleDay: enum-placeholder
  - policy_class: Machine
