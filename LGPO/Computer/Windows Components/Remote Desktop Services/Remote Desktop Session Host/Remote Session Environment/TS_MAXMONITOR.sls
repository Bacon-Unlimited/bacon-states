# windows:SUPPORTED_Windows7
#
# This policy setting allows you to limit the number of monitors that a user can use to display a Remote Desktop Services session. Limiting the number of monitors to display a Remote Desktop Services session can improve connection performance, particularly over slow links, and reduce server load.
# 
# If you enable this policy setting, you can specify the number of monitors that can be used to display a Remote Desktop Services session. You can specify a number from 1 to 16.
# 
# If you disable or do not configure this policy setting, the number of monitors that can be used to display a Remote Desktop Services session is not specified at the Group Policy level.
# 
Limit number of monitors:
  lgpo.set:
  - name: TS_MAXMONITOR
  - setting:
      TS_Max_Monitor: decimal-placeholder
  - policy_class: Machine
