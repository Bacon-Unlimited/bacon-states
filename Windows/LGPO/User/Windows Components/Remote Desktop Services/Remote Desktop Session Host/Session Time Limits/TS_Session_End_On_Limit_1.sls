# windows:SUPPORTED_WindowsXP
#
# This policy setting specifies whether to end a Remote Desktop Services session that has timed out instead of disconnecting it.
# 
# You can use this setting to direct Remote Desktop Services to end a session (that is, the user is logged off and the session is deleted from the server) after time limits for active or idle sessions are reached. By default, Remote Desktop Services disconnects sessions that reach their time limits.
# 
# Time limits are set locally by the server administrator or by using Group Policy. See the policy settings Set time limit for active Remote Desktop Services sessions and Set time limit for active but idle Remote Desktop Services sessions policy settings.
# 
# If you enable this policy setting, Remote Desktop Services ends any session that reaches its time-out limit.
# 
# If you disable this policy setting, Remote Desktop Services always disconnects a timed-out session, even if specified otherwise by the server administrator.
# 
# If you do not configure this policy setting, Remote Desktop Services disconnects a timed-out session, unless specified otherwise in local settings.
# 
# Note: This policy setting only applies to time-out limits that are explicitly set by the administrator. This policy setting does not apply to time-out events that occur due to connectivity or network conditions. This setting appears in both Computer Configuration and User Configuration. If both settings are configured, the Computer Configuration setting takes precedence.
# 
End session when time limits are reached:
  lgpo.set:
  - name: TS_Session_End_On_Limit_1
  - setting: Enabled
  - policy_class: User
