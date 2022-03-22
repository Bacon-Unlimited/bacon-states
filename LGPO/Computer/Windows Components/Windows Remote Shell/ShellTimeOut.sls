# windows:SUPPORTED_WindowsVista
#
# 
# This policy setting is deprecated and has no effect when set to any state: Enabled, Disabled, or Not Configured.
#       
Specify Shell Timeout:
  lgpo.set:
  - name: ShellTimeOut
  - setting:
      ShellTimeOut: decimal-placeholder
  - policy_class: Machine
