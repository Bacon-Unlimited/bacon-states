# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum number of processes a remote shell is allowed to launch.
# 
# If you enable this policy setting, you can specify any number from 0 to 0x7FFFFFFF to set the maximum number of process per shell. Zero (0) means unlimited number of processes.
# 
# If you disable or do not configure this policy setting,  the limit is five processes per shell.
Specify maximum number of processes per Shell:
  lgpo.set:
  - name: MaxProcessesPerShell
  - setting:
      MaxProcessesPerShell: decimal-placeholder
  - policy_class: Machine
