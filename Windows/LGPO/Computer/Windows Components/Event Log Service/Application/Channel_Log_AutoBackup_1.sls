# windows:SUPPORTED_WindowsVista
#
# This policy setting controls Event Log behavior when the log file reaches its maximum size and takes effect only if the "Retain old events" policy setting is enabled.
# 
# If you enable this policy setting and the "Retain old events" policy setting is enabled, the Event Log file is automatically closed and renamed when it is full. A new file is then started.
# 
# If you disable this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and old events are retained.
# 
# If you do not configure this policy setting and the "Retain old events" policy setting is enabled, new events are discarded and the old events are retained.
Back up log automatically when full:
  lgpo.set:
  - name: Channel_Log_AutoBackup_1
  - setting: Enabled
  - policy_class: Machine
