# windows:SUPPORTED_Windows_10_0
#
# This policy setting prioritizes the H.264/AVC 444 graphics mode for non-RemoteFX vGPU scenarios. When you use this setting on the RDP server, the server will use H.264/AVC 444 as the codec in an RDP 10 connection where both the client and server can use H.264/AVC 444.
#     
Prioritize H.264/AVC 444 graphics mode for Remote Desktop Connections:
  lgpo.set:
  - name: TS_SERVER_AVC444_MODE_PREFERRED
  - setting: Enabled
  - policy_class: Machine
