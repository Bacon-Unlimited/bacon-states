# windows:SUPPORTED_Windows8
#
#  This setting does not apply to desktop apps.
# 				
# Turns off Windows Network Isolation's automatic proxy discovery in the domain corporate environment.
# 
# If you enable this policy setting, it turns off Windows Network Isolation's automatic proxy discovery in the domain corporate environment. Only proxies configured with Group Policy are authoritative. This applies to both Internet and intranet proxies.
# 
# If you disable or do not configure this policy setting, Windows Network Isolation attempts to automatically discover your proxy server addresses.  
# 
# For more information see: http://go.microsoft.com/fwlink/p/?LinkId=234043 
Proxy definitions are authoritative:
  lgpo.set:
  - name: WF_NetIsolation_Authoritative_Proxies
  - setting: Enabled
  - policy_class: Machine
