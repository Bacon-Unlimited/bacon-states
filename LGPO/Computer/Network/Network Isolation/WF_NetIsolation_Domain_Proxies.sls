# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 	
# A semicolon-separated list of Internet proxy server IP addresses. These addresses are categorized as Internet by Windows Network Isolation and are accessible to  apps that have the Internet Client or Internet Client/Server capabilities.
# 
# If you enable this policy setting, apps on proxied networks can access the Internet without relying on the Private Network capability. However, in most situations Windows Network Isolation will be able to correctly discover proxies. By default, any proxies configured with this setting are merged with proxies that are auto-discovered. To make this policy configuration the sole list of allowed proxies, enable the "Proxy definitions are authoritative" setting.
# 
# If you disable or do not configure this policy setting, apps will use the Internet proxies auto-discovered by Windows Network Isolation.
# 
# Example: [3efe:3022::1000];18.0.0.1;18.0.0.2 
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Internet proxy servers for apps:
  lgpo.set:
  - name: WF_NetIsolation_Domain_Proxies
  - setting:
      WF_NetIsolation_Domain_ProxiesBox: text-placeholder
  - policy_class: Machine
