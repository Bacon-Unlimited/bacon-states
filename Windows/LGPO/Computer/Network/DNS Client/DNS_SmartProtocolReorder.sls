# windows:SUPPORTED_Windows8
#
# Specifies that the DNS client should prefer responses from link local name resolution protocols on non-domain networks over DNS responses when issuing queries for flat names. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).
# 
# If you enable this policy setting, the DNS client will prefer DNS responses, followed by LLMNR, followed by NetBT for all networks.  
# 
# If you disable this policy setting, or if you do not configure this policy setting, the DNS client will prefer link local responses for flat name queries on non-domain networks. 
# 
# Note:  This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.
Turn off smart protocol reordering:
  lgpo.set:
  - name: DNS_SmartProtocolReorder
  - setting: Enabled
  - policy_class: Machine
