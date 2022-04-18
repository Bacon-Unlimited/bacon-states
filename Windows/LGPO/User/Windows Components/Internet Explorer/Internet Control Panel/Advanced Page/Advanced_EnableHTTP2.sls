# SUPPORTED_IE11WIN10
#
# This policy setting determines whether Internet Explorer uses the HTTP2 network protocol. HTTP2 requests help optimize the latency of network requests through compression, multiplexing, and prioritization.
# 
# If you enable this policy setting, Internet Explorer uses the HTTP2 network protocol.
# 
# If you disable this policy setting, Internet Explorer won't use the HTTP2 network protocol.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer Advanced Internet Options settings.  The default is on.
Allow Internet Explorer to use the HTTP2 network protocol:
  lgpo.set:
  - name: Advanced_EnableHTTP2
  - setting: Enabled
  - policy_class: User
