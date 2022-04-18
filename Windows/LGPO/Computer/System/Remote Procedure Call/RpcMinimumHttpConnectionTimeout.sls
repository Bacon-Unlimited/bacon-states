# windows:SUPPORTED_WindowsXPSP1
#
# This policy setting controls the idle connection timeout for RPC/HTTP connections.  
# 
# This policy setting is useful in cases where a network agent like an HTTP proxy or a router uses a lower idle connection timeout than the IIS server running the RPC/HTTP proxy. In such cases, RPC/HTTP clients may encounter errors because connections will be timed out faster than expected. Using this policy setting you can force the RPC Runtime and the RPC/HTTP Proxy to use a lower connection timeout.
# 
# This policy setting is only applicable when the RPC Client, the RPC Server and the RPC HTTP Proxy are all running Windows Server 2003 family/Windows XP SP1 or higher versions. If either the RPC Client or the RPC Server or the RPC HTTP Proxy run on an older version of Windows, this policy setting will be ignored.
# 
# The minimum allowed value for this policy setting is 90 seconds. The maximum is 7200 seconds (2 hours).
# 
# If you disable this policy setting, the idle connection timeout on the IIS server running the RPC HTTP proxy will be used.
# 
# If you do not configure this policy setting, it will remain disabled.  The idle connection timeout on the IIS server running the RPC HTTP proxy will be used.
# 
# If you enable this policy setting, and the IIS server running the RPC HTTP proxy is configured with a lower idle connection timeout, the timeout on the IIS server is used. Otherwise, the provided timeout value is used.  The timeout is given in seconds.
# 
# Note: This policy setting will not be applied until the system is rebooted.
Set Minimum Idle Connection Timeout for RPC/HTTP connections:
  lgpo.set:
  - name: RpcMinimumHttpConnectionTimeout
  - setting:
      RpcMinimumHttpConnectionTimeoutValue: decimal-placeholder
  - policy_class: Machine
