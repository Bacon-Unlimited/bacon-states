# SUPPORTED_IE10
#
# The WebSocket object allows websites to request data across domains from your browser by using the WebSocket protocol. This policy setting allows administrators to enable or disable the WebSocket object. This policy setting does not prevent client-side communication across domains via other features in Internet Explorer 10. Also, this policy setting does not prevent a site from requesting cross-domain data through a server.
# 
# If you enable this policy setting, websites cannot request data across domains by using the WebSocket object.
# 
# If you disable or do not configure this policy setting, websites can request data across domains by using the WebSocket object. By default, the WebSocket object is enabled.
Turn off the WebSocket Object:
  lgpo.set:
  - name: IESF_DisableWebSocket
  - setting: Enabled
  - policy_class: Machine
