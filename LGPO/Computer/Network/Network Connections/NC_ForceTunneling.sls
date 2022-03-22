# windows:SUPPORTED_Windows7
#
# This policy setting determines whether a remote client computer  routes Internet traffic through the internal network or whether the client accesses the Internet directly.
# 
# When a remote client computer connects to an internal network using DirectAccess, it can access the Internet in two ways: through the secure tunnel that DirectAccess establishes between the computer and the internal network, or directly through the local default gateway.
# 
# If you enable this policy setting, all traffic between a remote client computer running DirectAccess and the Internet is routed through the internal network.
# 
# If you disable this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.
# 
# If you do not configure this policy setting, traffic between remote client computers running DirectAccess and the Internet is not routed through the internal network.
Route all traffic through the internal network:
  lgpo.set:
  - name: NC_ForceTunneling
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine
