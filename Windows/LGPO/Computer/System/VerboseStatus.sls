# windows:SUPPORTED_Win2k
#
# This policy setting directs the system to display highly detailed status messages.
# 
# This policy setting is designed for advanced users who require this information.
# 
# If you enable this policy setting, the system displays status messages that reflect each step in the process of starting, shutting down, logging on, or logging off the system.
# 
# If you disable or do not configure this policy setting, only the default status messages are displayed to the user during these processes.
# 
# Note: This policy setting is ignored if the ""Remove Boot/Shutdown/Logon/Logoff status messages"" policy setting is enabled.
Display highly detailed status messages:
  lgpo.set:
  - name: VerboseStatus
  - setting: Enabled
  - policy_class: Machine
