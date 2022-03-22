# windows:SUPPORTED_Windows_10_0
#
# Specify "true" to allow the device to participate in Peer Caching while connected via VPN to the domain network.
# 
# This means the device can download from or upload to other domain network devices, either on VPN or on the corporate domain network.
Enable Peer Caching while the device connects via VPN:
  lgpo.set:
  - name: AllowVPNPeerCaching
  - setting:
      AllowVPNPeerCaching: boolean-placeholder
  - policy_class: Machine
