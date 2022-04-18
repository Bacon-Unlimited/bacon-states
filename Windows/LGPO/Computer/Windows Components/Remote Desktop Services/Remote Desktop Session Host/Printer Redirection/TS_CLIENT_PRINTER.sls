# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify whether to prevent the mapping of client printers in Remote Desktop Services sessions.
# 
# You can use this policy setting to prevent users from redirecting print jobs from the remote computer to a printer attached to their local (client) computer. By default, Remote Desktop Services allows this client printer mapping.
# 
# If you enable this policy setting, users cannot redirect print jobs from the remote computer to a local client printer in Remote Desktop Services sessions.
# 
# If you disable this policy setting, users can redirect print jobs with client printer mapping.
# 
# If you do not configure this policy setting, client printer mapping is not specified at the Group Policy level.
# 
Do not allow client printer redirection:
  lgpo.set:
  - name: TS_CLIENT_PRINTER
  - setting: Enabled
  - policy_class: Machine
