# SUPPORTED_IE10
#
# This policy setting allows you to change the default limit of WebSocket connections per server. The default limit is 6; you can select a value from 2 through 128.
# 
# If you enable this policy setting, Internet Explorer uses the WebSocket connection limit that you set with this policy setting.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the default limit of 6 WebSocket connections per server.
Set the maximum number of WebSocket connections per server:
  lgpo.set:
  - name: IESF_WebSocketMaxConnectionsPerServer
  - setting:
      IESF_WebSocketMaxConnections: decimal-placeholder
  - policy_class: User
