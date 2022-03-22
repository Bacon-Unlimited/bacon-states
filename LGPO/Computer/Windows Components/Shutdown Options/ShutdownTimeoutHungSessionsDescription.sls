# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the number of minutes the system waits for the hung logon sessions before proceeding with the system shutdown.
# 
# If you enable this policy setting, the system waits for the hung logon sessions for the number of minutes specified.
# 
# If you disable or do not configure this policy setting, the default timeout value is 3 minutes for workstations and 15 minutes for servers.
Timeout for hung logon sessions during shutdown:
  lgpo.set:
  - name: ShutdownTimeoutHungSessionsDescription
  - setting:
      ShutdownSessionTimeout_Time: decimal-placeholder
  - policy_class: Machine
