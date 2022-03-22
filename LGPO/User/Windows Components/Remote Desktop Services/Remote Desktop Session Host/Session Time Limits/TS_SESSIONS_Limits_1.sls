# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify the maximum amount of time that a Remote Desktop Services session can be active before it is automatically disconnected.
# 
# If you enable this policy setting, you must select the desired time limit in the Active session limit list. Remote Desktop Services will automatically disconnect active sessions after the specified amount of time. The user receives a warning two minutes before the Remote Desktop Services session disconnects, which allows the user to save open files and close programs. If you have a console session, active session time limits do not apply.
# 
# If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. By default, Remote Desktop Services allows sessions to remain active for an unlimited amount of time. 
# 
# If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.
# 
# Note: This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
# 
Set time limit for active Remote Desktop Services sessions:
  lgpo.set:
  - name: TS_SESSIONS_Limits_1
  - setting:
      TS_SESSIONS_ActiveLimit: enum-placeholder
  - policy_class: User
