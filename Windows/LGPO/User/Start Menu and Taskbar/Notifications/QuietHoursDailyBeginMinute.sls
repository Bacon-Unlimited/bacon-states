# windows:SUPPORTED_Windows_6_3only
#
# 
#         This policy setting specifies the number of minutes after midnight (local time) that Quiet Hours is to begin each day.
# 
#         If you enable this policy setting, the specified time will be used, and users will not be able to customize any Quiet Hours settings.
# 
#         If you disable this policy setting, a default value will be used, and users will not be able to change it or any other Quiet Hours setting.
# 
#         If you do not configure this policy setting, a default value will be used, which administrators and users will be able to modify.
#       
Set the time Quiet Hours begins each day:
  lgpo.set:
  - name: QuietHoursDailyBeginMinute
  - setting:
      QuietHoursDailyBeginMinuteControl: decimal-placeholder
  - policy_class: User
