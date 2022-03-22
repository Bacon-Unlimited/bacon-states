# windows:SUPPORTED_WindowsNETOnly
#
# This policy setting defines when the Shutdown Event Tracker System State Data feature is activated.
# 
# The system state data file contains information about the basic system state as well as the state of all running processes.
# 
# If you enable this policy setting, the System State Data feature is activated when the user indicates that the shutdown or restart is unplanned.
# 
# If you disable this policy setting, the System State Data feature is never activated.
# 
# If you do not configure this policy setting, the default behavior for the System State Data feature occurs.
# 
# Note: By default, the System State Data feature is always enabled on Windows Server 2003. See "Supported on" for all supported versions.
Activate Shutdown Event Tracker System State Data feature:
  lgpo.set:
  - name: ShutdownEventTrackerStateFile
  - setting: Enabled
  - policy_class: Machine
