# windows:SUPPORTED_WindowsNET
#
# Specifies whether a Remote Desktop Session Host server requires secure RPC communication with all clients or allows unsecured communication.
# 
# You can use this setting to strengthen the security of RPC communication with clients by allowing only authenticated and encrypted requests.
# 
# If the status is set to Enabled, Remote Desktop Services accepts requests from RPC clients that support secure requests, and does not allow unsecured communication with untrusted clients.
# 
# If the status is set to Disabled, Remote Desktop Services always requests security for all RPC traffic. However, unsecured communication is allowed for RPC clients that do not respond to the request.
# 
# If the status is set to Not Configured, unsecured communication is allowed.
# 
# Note: The RPC interface is used for administering and configuring Remote Desktop Services.
Require secure RPC communication:
  lgpo.set:
  - name: TS_RPC_ENCRYPTION
  - setting: Enabled
  - policy_class: Machine
