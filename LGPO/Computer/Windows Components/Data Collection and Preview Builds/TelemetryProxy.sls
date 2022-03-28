# windows:SUPPORTED_Windows_10_0
#
# With this policy setting, you can forward Connected User Experience and Telemetry requests to a proxy server.
# 
# If you enable this policy setting, you can specify the FQDN or IP address of the destination device within your organizations network (and optionally a port number, if desired). The connection will be made over a Secure Sockets Layer (SSL) connection.  If the named proxy fails, or if you disable or do not configure this policy setting, Connected User Experience and Telemetry data will be sent to Microsoft using the default proxy configuration.
# 
# The format for this setting is <server>:<port> 
#       
Configure Connected User Experiences and Telemetry:
  lgpo.set:
  - name: TelemetryProxy
  - setting:
      TelemetryProxyName: text-placeholder
  - policy_class: Machine
