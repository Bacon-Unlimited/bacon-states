# SUPPORTED_IE11WIN8ONLY
#
# This policy setting determines whether Internet Explorer uses the SPDY/3 network protocol. SPDY/3 works with HTTP requests to optimize the latency of network requests through compression, multiplexing and prioritization.
# 
# If you enable this policy setting, Internet Explorer uses the SPDY/3 network protocol.
# 
# If you disable this policy setting, Internet Explorer won't use the SPDY/3 network protocol.
# 
# If you don't configure this policy setting, users can turn this behavior on or off, using Internet Explorer Advanced Internet Options settings.  The default is on.
Allow Internet Explorer to use the SPDY/3 network protocol:
  lgpo.set:
  - name: Advanced_EnableSPDY3_0
  - setting: Enabled
  - policy_class: User
