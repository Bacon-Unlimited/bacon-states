# SUPPORTED_IE8
#
# This policy setting allows you to change the default connection limit for HTTP 1.1 from 6 connections per host to a limit of your choice (from 2 through 128).
# 
# If you enable this policy setting, Internet Explorer uses the connection limit of your choice for HTTP 1.1.
# 
# If you disable or do not configure this policy setting, Internet Explorer uses the default connection limit for HTTP 1.1 (6 connections per host).
# 
# In versions of Internet Explorer before Internet Explorer 8, the default connection limit for HTTP 1.1 was 2.
Change the maximum number of connections per host (HTTP 1.1):
  lgpo.set:
  - name: IESF_MaxConnectionPerServer
  - setting:
      IESF_MaxConnections: decimal-placeholder
  - policy_class: User
