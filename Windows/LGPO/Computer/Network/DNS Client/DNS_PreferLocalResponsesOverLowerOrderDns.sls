# windows:SUPPORTED_Windows8
#
# Specifies that responses from link local name resolution protocols received over a network interface that is higher in the binding order are preferred over DNS responses from network interfaces lower in the binding order. Examples of link local name resolution protocols include link local multicast name resolution (LLMNR) and NetBIOS over TCP/IP (NetBT).
# 
# If you enable this policy setting, responses from link local protocols will be preferred over DNS responses if the local responses are from a network with a higher binding order.
# 
# If you disable this policy setting, or if you do not configure this policy setting, then DNS responses from networks lower in the binding order will be preferred over responses from link local protocols received from networks higher in the binding order.
# 
# Note:  This policy setting is applicable only if the turn off smart multi-homed name resolution policy setting is disabled or not configured.
Prefer link local responses over DNS when received over a network with higher precedence:
  lgpo.set:
  - name: DNS_PreferLocalResponsesOverLowerOrderDns
  - setting: Enabled
  - policy_class: Machine
