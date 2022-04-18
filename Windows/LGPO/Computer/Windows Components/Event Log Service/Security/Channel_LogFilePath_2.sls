# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the location of the log file. The location of the file must be writable by the Event Log service and should only be accessible to administrators.
# 
# If you enable this policy setting, the Event Log uses the path specified in this policy setting.
# 
# If you disable or do not configure this policy setting, the Event Log uses the folder %SYSTEMROOT%\System32\winevt\Logs.
Control the location of the log file:
  lgpo.set:
  - name: Channel_LogFilePath_2
  - setting:
      Channel_LogFilePath: text-placeholder
  - policy_class: Machine
