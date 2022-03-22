# windows:SUPPORTED_Windows_10_0
#
# This policy allows you to specify how your client(s) can discover Delivery Optimization in Network Cache servers dynamically.
# 
# Options available are:
# 
# 1 = DHCP Option 235.
# 
# 2 = DHCP Option 235 Force.
# 
# For both options, the client will query DHCP Option ID 235 and use the returned value as the Cache Server Hostname. Option 2 overrides the Cache Server Hostname policy, if configured.
Cache Server Hostname Source:
  lgpo.set:
  - name: CacheHostSource
  - setting:
      CacheHostSource: enum-placeholder
  - policy_class: Machine
