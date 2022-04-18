# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting controls how the RPC server runtime handles unauthenticated RPC clients connecting to RPC servers.
# 
# This policy setting impacts all RPC applications.  In a domain environment this policy setting should be used with caution as it can impact a wide range of functionality including group policy processing itself.  Reverting a change to this policy setting can require manual intervention on each affected machine.  This policy setting should never be applied to a domain controller.
# 
# If you disable this policy setting, the RPC server runtime uses the value of "Authenticated" on Windows Client, and the value of "None" on Windows Server versions that support this policy setting. 
# 
# If you do not configure this policy setting, it remains disabled.  The RPC server runtime will behave as though it was enabled with the value of "Authenticated" used for Windows Client and the value of "None" used for Server SKUs that support this policy setting. 
# 
# If you enable this policy setting, it directs the RPC server runtime to restrict unauthenticated RPC clients connecting to RPC servers running on a machine. A client will be considered an authenticated client if it uses a named pipe to communicate with the server or if it uses RPC Security. RPC Interfaces that have specifically requested to be accessible by unauthenticated clients may be exempt from this restriction, depending on the selected value for this policy setting.
# 
# --  "None" allows all RPC clients to connect to RPC Servers running on the machine on which the policy setting is applied.
# 
# --  "Authenticated" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied. Exemptions are granted to interfaces that have requested them.
# 
# --  "Authenticated without exceptions" allows only authenticated RPC Clients (per the definition above) to connect to RPC Servers running on the machine on which the policy setting is applied.  No exceptions are allowed.
# 
# Note: This policy setting will not be applied until the system is rebooted.
Restrict Unauthenticated RPC clients:
  lgpo.set:
  - name: RpcRestrictRemoteClients
  - setting:
      RpcRestrictRemoteClientsList: enum-placeholder
  - policy_class: Machine
