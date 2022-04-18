# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to enter a keep-alive interval to ensure that the session state on the RD Session Host server is consistent with the client state.
# 
# After an RD Session Host server client loses the connection to an RD Session Host server, the session on the RD Session Host server might remain active instead of changing to a disconnected state, even if the client is physically disconnected from the RD Session Host server. If the client logs on to the same RD Session Host server again, a new session might be established (if the RD Session Host server is configured to allow multiple sessions), and the original session might still be active.
# 
# If you enable this policy setting, you must enter a keep-alive interval. The keep-alive interval determines how often, in minutes, the server checks the session state. The range of values you can enter is 1 to 999,999.
# 
# If you disable or do not configure this policy setting, a keep-alive interval is not set and the server will not check the session state.
Configure keep-alive connection interval:
  lgpo.set:
  - name: TS_KEEP_ALIVE
  - setting:
      TS_KEEP_ALIVE_INTERVAL: decimal-placeholder
  - policy_class: Machine
