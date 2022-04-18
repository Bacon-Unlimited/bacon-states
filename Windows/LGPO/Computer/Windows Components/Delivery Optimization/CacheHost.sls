# windows:SUPPORTED_Windows_10_0
#
# This policy allows you to set one or more Delivery Optimization in Network Cache servers that will be used by your client(s).
# 
# One or more values can be added as either fully qualified domain names (FQDN) or IP addresses. To add multiple values, separate each FQDN or IP address by commas.
#       
Cache Server Hostname:
  lgpo.set:
  - name: CacheHost
  - setting:
      CacheHost: text-placeholder
  - policy_class: Machine
