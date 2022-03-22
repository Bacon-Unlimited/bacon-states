# windows:SUPPORTED_Windows_10_0
#
# This policy setting determines how the SMB server selects a cipher suite when negotiating a new connection with an SMB client.
# 
# If you enable this policy setting, the SMB server will select the cipher suite it most prefers from the list of client-supported cipher suites, ignoring the client's preferences.
# 
# If you disable or do not configure this policy setting, the SMB server will select the cipher suite the client most prefers from the list of server-supported cipher suites.
# 
# Note: When configuring this security setting, changes will not take effect until you restart Windows.
Honor cipher suite order:
  lgpo.set:
  - name: Pol_HonorCipherSuiteOrder
  - setting: Enabled
  - policy_class: Machine
