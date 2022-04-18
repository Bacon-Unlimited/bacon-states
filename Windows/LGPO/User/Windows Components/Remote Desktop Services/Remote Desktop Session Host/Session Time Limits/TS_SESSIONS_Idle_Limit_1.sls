# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to specify the maximum amount of time that an active Remote Desktop Services session can be idle (without user input) before it is automatically disconnected.
# 
# If you enable this policy setting, you must select the desired time limit in the Idle session limit list. Remote Desktop Services will automatically disconnect active but idle sessions after the specified amount of time. The user receives a warning two minutes before the session disconnects, which allows the user to press a key or move the mouse to keep the session active. If you have a console session, idle session time limits do not apply.
# 
# If you disable or do not configure this policy setting, the time limit is not specified at the Group Policy level. By default,  Remote Desktop Services allows sessions to remain active but idle for an unlimited amount of time. 
# 
# If you want Remote Desktop Services to end instead of disconnect a session when the time limit is reached, you can configure the policy setting Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\Remote Desktop Session Host\Session Time Limits\End session when time limits are reached.
# 
# Note: This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
# 
Set time limit for active but idle Remote Desktop Services sessions:
  lgpo.set:
  - name: TS_SESSIONS_Idle_Limit_1
  - setting:
      TS_SESSIONS_IdleLimitText: enum-placeholder
  - policy_class: User
