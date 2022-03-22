# windows:SUPPORTED_WindowsXPSP2
#
# This setting disables PNRP protocol from advertising the computer or from searching other computers on the local subnet in the site local cloud.
# 
# The Peer Name Resolution Protocol (PNRP) allows for distributed resolution of a name to an IPV6 address and port number. One of the ways in which PNRP bootstraps itself is by using multicast on the same subnet. That is, PNRP publishes itself on the local subnet, so that other computers can find it when needed.
# 
# If you enable this setting, PNRP will not use multicast for bootstrapping. Specifying this registry key will break scenarios where there is no seed server for bootstrap (such as ad hoc networking scenarios).
# 
# If you disable this setting, PNRP will use multicast for bootstrapping on the same subnet.
# 
# If this setting is not configured, the protocol will revert to using a public registry key to determine whether it will publish the computer or will use multicast to search for other computers on the local subnet.
# 
# The multicast protocol used for bootstrapping is SSDP (Simple Service Discovery Protocol). The SSDP service must be enabled (which it is by default) for this policy to have effect.
Turn off Multicast Bootstrap:
  lgpo.set:
  - name: PNRP_DisableMulticastBootstrap_2
  - setting: Enabled
  - policy_class: Machine
