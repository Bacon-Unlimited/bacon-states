# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to configure a time limit for disconnected Remote Desktop Services sessions.
# 
# You can use this policy setting to specify the maximum amount of time that a disconnected session remains active on the server. By default, Remote Desktop Services allows users to disconnect from a Remote Desktop Services session without logging off and ending the session.
# 
# When a session is in a disconnected state, running programs are kept active even though the user is no longer actively connected. By default, these disconnected sessions are maintained for an unlimited time on the server.
# 
# If you enable this policy setting, disconnected sessions are deleted from the server after the specified amount of time. To enforce the default behavior that disconnected sessions are maintained for an unlimited time, select Never. If you have a console session, disconnected session time limits do not apply.
# 
# 
# If you disable or do not configure this policy setting, this policy setting is not specified at the Group Policy level. Be y default, Remote Desktop Services disconnected sessions are maintained for an unlimited amount of time. 
# 
# Note: This policy setting appears in both Computer Configuration and User Configuration. If both policy settings are configured, the Computer Configuration policy setting takes precedence.
# 
Set time limit for disconnected sessions:
  lgpo.set:
  - name: TS_SESSIONS_Disconnected_Timeout_1
  - setting:
      TS_SESSIONS_EndDisconnected: enum-placeholder
  - policy_class: User
