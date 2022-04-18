# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure IP-HTTPS, a tunneling technology that uses the HTTPS protocol to provide IP connectivity to a remote network.
# 
# If you disable or do not configure this policy setting, the local host settings are used.
# 
# If you enable this policy setting, you can specify an IP-HTTPS server URL. You will be able to configure IP-HTTPS with one of the following settings:
# 
# Policy Default State: The IP-HTTPS interface is used when there are no other connectivity options.
# 
# Policy Enabled State: The IP-HTTPS interface is always present, even if the host has other connectivity options.
# 
# Policy Disabled State: No IP-HTTPS interfaces are present on the host.
# 
# 
Set IP-HTTPS State:
  lgpo.set:
  - name: IPHTTPS_ClientState
  - setting:
      IPHTTPSClientUrlBox: text-placeholder
      StateSelect: enum-placeholder
  - policy_class: Machine
