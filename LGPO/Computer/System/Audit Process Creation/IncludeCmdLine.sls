# windows:SUPPORTED_Windows_6_3
#
# This policy setting determines what information is logged in security audit events when a new process has been created.
# 
# This setting only applies when the Audit Process Creation policy is enabled. If you enable this policy setting the command line information for every process will be logged in plain text in the security event log as part of the Audit Process Creation event 4688, "a new process has been created," on the workstations and servers on which this policy setting is applied.
# 
# If you disable or do not configure this policy setting, the process's command line information will not be included in Audit Process Creation events.
# 
# Default: Not configured
# 
# Note: When this policy setting is enabled, any user with access to read the security events will be able to read the command line arguments for any successfully created process. Command line arguments can contain sensitive or private information such as passwords or user data.
#       
Include command line in process creation events:
  lgpo.set:
  - name: IncludeCmdLine
  - setting: Enabled
  - policy_class: Machine
