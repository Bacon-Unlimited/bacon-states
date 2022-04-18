# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting enables or disables PNRP cloud creation.
# 
# PNRP is a distributed name resolution protocol allowing Internet hosts to publish peer names with a corresponding Internet Protocol version 6 (IPv6) address. Other hosts can then resolve the name, retrieve the corresponding address, and establish peer-to-peer (P2P) connections. The PNRP cloud is a group of connected PNRP nodes, in which connections exist between peers so that a node in the PNRP cloud can resolve names published by other nodes.
# 
# PNRP creates a global cloud if the computer has a global IPv6 address, but creates a site-local cloud if the computer has a site-local address.
# 
# If you enable this policy setting, PNRP does not create a cloud, and applications cannot use this cloud to publish or resolve names regardless of whether the computer has an IPv6 address that matches the cloud scope.
# 
# If you disable or do not configure this policy setting, all PNRP clouds are turned on by default, and PNRP creates a cloud if the computer has an IPv6 address compatible with the clouds scope.
# 
Turn off PNRP cloud creation:
  lgpo.set:
  - name: PNRP_Disabled_1
  - setting: Enabled
  - policy_class: Machine
