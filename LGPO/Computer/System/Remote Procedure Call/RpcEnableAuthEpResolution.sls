# windows:SUPPORTED_WindowsXPSP2
#
# This policy setting controls whether RPC clients authenticate with the Endpoint Mapper Service when the call they are making contains authentication information.   The Endpoint Mapper Service on computers running Windows NT4 (all service packs) cannot process authentication information supplied in this manner. 
# 
# If you disable this policy setting, RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Endpoint Mapper Service on Windows NT4 Server.
# 
# If you enable this policy setting, RPC clients will authenticate to the Endpoint Mapper Service for calls that contain authentication information.  Clients making such calls will not be able to communicate with the Windows NT4 Server Endpoint Mapper Service.
# 
# If you do not configure this policy setting, it remains disabled.  RPC clients will not authenticate to the Endpoint Mapper Service, but they will be able to communicate with the Windows NT4 Server Endpoint Mapper Service.
# 
# Note: This policy will not be applied until the system is rebooted.
Enable RPC Endpoint Mapper Client Authentication:
  lgpo.set:
  - name: RpcEnableAuthEpResolution
  - setting: Enabled
  - policy_class: Machine
