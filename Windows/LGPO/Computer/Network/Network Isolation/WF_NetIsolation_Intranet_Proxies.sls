# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 	
# A  semicolon-separated list of intranet proxy server IP addresses. These addresses are categorized as private by Windows Network Isolation and are accessible to  apps that have the Home/Work Networking capability.
# 
# If you enable this policy setting, it allows an administrator to configure a set of proxies that provide access to intranet resources.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to discover proxies and configures them as Internet nodes.
#   
# This setting should NOT be used to configure Internet proxies.
# 
# Example: [3efe:3022::1000]; 18.0.0.1; 18.0.0.2
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Intranet proxy servers for  apps:
  lgpo.set:
  - name: WF_NetIsolation_Intranet_Proxies
  - setting:
      WF_NetIsolation_Intranet_ProxiesBox: text-placeholder
  - policy_class: Machine
