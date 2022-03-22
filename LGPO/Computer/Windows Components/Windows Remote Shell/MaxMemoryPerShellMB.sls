# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum total amount of memory in megabytes that can be allocated by any active remote shell and all its child processes.
# 
# Any value from 0 to 0x7FFFFFFF can be set, where 0 equals unlimited memory, which means the ability of remote operations to allocate memory is only limited by the available virtual memory.
# 
# If you enable this policy setting, the remote operation is terminated when a new allocation exceeds the specified quota.
# 
# If you disable or do not configure this policy setting, the value 150 is used by default.
Specify maximum amount of memory in MB per Shell:
  lgpo.set:
  - name: MaxMemoryPerShellMB
  - setting:
      MaxMemoryPerShellMB: decimal-placeholder
  - policy_class: Machine
