# SUPPORTED_WindowsNET_Enterprise
#
# This policy setting allows you to specify the redirection method to use when a client device reconnects to an existing Remote Desktop Services session in a load-balanced RD Session Host server farm. This setting applies to an RD Session Host server that is configured to use RD Connection Broker and not to the RD Connection Broker server.
# 
# If you enable this policy setting, a Remote Desktop Services client queries the RD Connection Broker server and is redirected to their existing session by using the IP address of the RD Session Host server where their session exists. To use this redirection method, client computers must be able to connect directly by IP address to RD Session Host servers in the farm.
# 
# If you disable this policy setting, the IP address of the RD Session Host server is not sent to the client. Instead, the IP address is embedded in a token. When a client reconnects to the load balancer, the routing token is used to redirect the client to their existing session on the correct RD Session Host server in the farm. Only disable this setting when your network load-balancing solution supports the use of RD Connection Broker routing tokens and you do not want clients to directly connect by IP address to RD Session Host servers in the load-balanced farm.
# 
# If you do not configure this policy setting, the Use IP address redirection policy setting is not enforced at the group Group policy Policy level and the default will be used. This setting is enabled by default.
# 
# Notes:
# 
#       1. For Windows Server 2008, this policy setting is supported on at least Windows Server 2008 Standard.
# 
Use IP Address Redirection:
  lgpo.set:
  - name: TS_SD_EXPOSE_ADDRESS
  - setting: Enabled
  - policy_class: Machine
