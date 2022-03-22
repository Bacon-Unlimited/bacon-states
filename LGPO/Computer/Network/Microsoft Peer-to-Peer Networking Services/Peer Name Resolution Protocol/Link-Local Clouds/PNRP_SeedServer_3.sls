# windows:SUPPORTED_WindowsXPSP2
#
# This setting sets the seed server for the link local cloud to a specified node in the enterprise.
# 
# The Peer Name Resolution Protocol (PNRP) allows for distributed resolution of a name to an IPV6 address and port number. The protocol, in some cases, requires a seed server from which to get bootstrapped. This setting allows for setting the seed server to a specified node in an enterprise.
# 
# To use this setting, click Enable, and then enter a semicolon-delimited list of IPV6 addresses in the available field. If you enable this setting and you don’t enter any address, no seed server will be used.
# 
# If this setting is not configured, the protocol will revert to using a public registry key to determine the seed server to bootstrap from.
Set the Seed Server:
  lgpo.set:
  - name: PNRP_SeedServer_3
  - setting:
      PNRP_SeedServer_Name: text-placeholder
  - policy_class: Machine
