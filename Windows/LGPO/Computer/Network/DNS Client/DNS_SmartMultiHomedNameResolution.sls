# windows:SUPPORTED_Windows8
#
# Specifies that a multi-homed DNS client should optimize name resolution across networks.  The setting improves performance by issuing parallel DNS, link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT) queries across all networks. In the event that multiple positive responses are received, the network binding order is used to determine which response to accept.
# 
# If you enable this policy setting, the DNS client will not perform any optimizations.  DNS queries will be issued across all networks first. LLMNR queries will be issued if the DNS queries fail, followed by NetBT queries if LLMNR queries fail.
# 
# If you disable this policy setting, or if you do not configure this policy setting, name resolution will be optimized when issuing DNS, LLMNR and NetBT queries.
Turn off smart multi-homed name resolution:
  lgpo.set:
  - name: DNS_SmartMultiHomedNameResolution
  - setting: Enabled
  - policy_class: Machine
