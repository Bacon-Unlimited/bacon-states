# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify a 6to4 relay name for a 6to4 host. A 6to4 relay is used as a default gateway for IPv6 network traffic sent by the 6to4 host. The 6to4 relay name setting has no effect if 6to4 connectivity is not available on the host.
# 
# If you enable this policy setting, you can specify a relay name for a 6to4 host.
# 
# If you disable or do not configure this policy setting, the local host setting is used, and you cannot specify a relay name for a 6to4 host.
# 
# 
Set 6to4 Relay Name:
  lgpo.set:
  - name: 6to4_Router_Name
  - setting:
      RouterNameBox: text-placeholder
  - policy_class: Machine
