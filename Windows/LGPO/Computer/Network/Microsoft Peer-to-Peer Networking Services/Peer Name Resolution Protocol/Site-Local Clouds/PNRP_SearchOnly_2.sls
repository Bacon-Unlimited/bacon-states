# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting limits a node to resolving, but not publishing, names in a specific Peer Name Resolution Protocol (PNRP) cloud.
# 
# This policy setting forces computers to act as clients in peer-to-peer (P2P) scenarios. For example, a client computer can detect other computers to initiate chat sessions, but other computers cannot detect that client and initiate sessions with it.
# 
# If you enable this policy setting, this computer cannot register PNRP names, and cannot help other computers perform PNRP lookups.
# 
# If you disable or do not configure this policy setting, this computer can publish PNRP names and help other computers perform PNRP lookups.
# 
Set PNRP cloud to resolve only:
  lgpo.set:
  - name: PNRP_SearchOnly_2
  - setting: Enabled
  - policy_class: Machine
