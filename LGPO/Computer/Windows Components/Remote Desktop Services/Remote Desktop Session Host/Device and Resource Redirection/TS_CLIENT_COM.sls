# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to prevent the redirection of data to client COM ports from the remote computer in a Remote Desktop Services session.
# 
# You can use this setting to prevent users from redirecting data to COM port peripherals or mapping local COM ports while they are logged on to a Remote Desktop Services session. By default, Remote Desktop Services allows this COM port redirection.
# 
# If you enable this policy setting, users cannot redirect server data to the local COM port.
# 
# If you disable this policy setting, Remote Desktop Services always allows COM port redirection.
# 
# If you do not configure this policy setting, COM port redirection is not specified at the Group Policy level. 
# 
# 
Do not allow COM port redirection:
  lgpo.set:
  - name: TS_CLIENT_COM
  - setting: Enabled
  - policy_class: Machine
