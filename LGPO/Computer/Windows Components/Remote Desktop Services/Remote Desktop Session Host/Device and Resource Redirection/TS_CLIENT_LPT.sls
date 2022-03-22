# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to prevent the redirection of data to client LPT ports during a Remote Desktop Services session.
# 
# You can use this setting to prevent users from mapping local LPT ports and redirecting data from the remote computer to local LPT port peripherals. By default, Remote Desktop Services allows LPT port redirection.
# 
# If you enable this policy setting, users in a Remote Desktop Services session cannot redirect server data to the local LPT port.
# 
# If you disable this policy setting, LPT port redirection is always allowed.
# 
# If you do not configure this policy setting, LPT port redirection is not specified at the Group Policy level. 
# 
Do not allow LPT port redirection:
  lgpo.set:
  - name: TS_CLIENT_LPT
  - setting: Enabled
  - policy_class: Machine
