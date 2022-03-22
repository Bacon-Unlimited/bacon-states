# windows:SUPPORTED_WindowsVista
#
# This policy setting controls Event Log behavior when the log file reaches its maximum size.
# 
# If you enable this policy setting and a log file reaches its maximum size, new events are not written to the log and are lost.
# 
# If you disable or do not configure this policy setting and a log file reaches its maximum size, new events overwrite old events.
# 
# Note: Old events may or may not be retained according to the "Backup log automatically when full" policy setting.
Control Event Log behavior when the log file reaches its maximum size:
  lgpo.set:
  - name: Channel_Log_Retention_3
  - setting: Enabled
  - policy_class: Machine
