# SUPPORTED_IE8
#
# This policy setting allows you to change the default connection limit for HTTP 1.0 from 6 connections per host to a limit of your choice (from 2 through 128).
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default connection limit for HTTP 1.0 (6 connections per host).
# 
# In versions of Internet Explorer prior to Internet Explorer 8, the default connection limit for HTTP 1.0 was 4.
Maximum number of connections per server (HTTP 1.0):
  lgpo.set:
  - name: IESF_MaxConnectionPer1_0Server
  - setting:
      IESF_MaxConnections: decimal-placeholder
  - policy_class: User
