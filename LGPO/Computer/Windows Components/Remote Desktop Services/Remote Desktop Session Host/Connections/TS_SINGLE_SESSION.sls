# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to restrict users to a single Remote Desktop Services session.
# 
# If you enable this policy setting, users who log on remotely by using Remote Desktop Services will be restricted to a single session (either active or disconnected) on that server. If the user leaves the session in a disconnected state, the user automatically reconnects to that session at the next logon.
# 
# If you disable this policy setting, users are allowed to make unlimited simultaneous remote connections by using Remote Desktop Services.
# 
# If you do not configure this policy setting,  this policy setting is not specified at the Group Policy level.
# 
Restrict Remote Desktop Services users to a single Remote Desktop Services session:
  lgpo.set:
  - name: TS_SINGLE_SESSION
  - setting: Enabled
  - policy_class: Machine
