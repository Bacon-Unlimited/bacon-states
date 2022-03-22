# windows:SUPPORTED_Windows7
#
# Specifies whether the user has Connect and Disconnect options for the DirectAccess entry when the user clicks the Networking notification area icon.
# 
# If the user clicks the Disconnect option, NCA removes the DirectAccess rules from the Name Resolution Policy Table (NRPT) and the DirectAccess client computer uses whatever normal name resolution is available to the client computer in its current network configuration, including sending all DNS queries to the local intranet or Internet DNS servers. Note that NCA does not remove the existing IPsec tunnels and users can still access intranet resources across the DirectAccess server by specifying IPv6 addresses rather than names.
# 
# The ability to disconnect allows users to specify single-label, unqualified names (such as “PRINTSVR”) for local resources when connected to a different intranet and for temporary access to intranet resources when network location detection has not correctly determined that the DirectAccess client computer is connected to its own intranet.
# 
# To restore the DirectAccess rules to the NRPT and resume normal DirectAccess functionality, the user clicks Connect.
# 
# Note 
# If the DirectAccess client computer is on the intranet and has correctly determined its network location, the Disconnect option has no effect because the rules for DirectAccess are already removed from the NRPT.
# 
# If this setting is not configured, users do not have Connect or Disconnect options.
# 
Prefer Local Names Allowed:
  lgpo.set:
  - name: LocalNamesOn
  - setting: Enabled
  - policy_class: Machine
