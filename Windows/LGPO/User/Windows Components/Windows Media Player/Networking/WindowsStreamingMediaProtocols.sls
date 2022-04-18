# SUPPORTED_WMP8
#
# This policy setting allows you to specify that Windows Media Player can attempt to use selected protocols when receiving streaming media from a server running Windows Media Services.
# 
# If you enable this policy setting, the protocols that are selected on the Network tab of the Player are used to receive a stream initiated through an MMS or RTSP URL from a Windows Media server. If the RSTP/UDP check box is selected, a user can specify UDP ports in the Use ports check box. If the user does not specify UDP ports, the Player uses default ports when using the UDP protocol. This policy setting also specifies that multicast streams can be received if the "Allow the Player to receive multicast streams" check box on the Network tab is selected.
# 
# If you enable this policy setting, the administrator must also specify the protocols that are available to users on the Network tab. If the administrator does not specify any protocols, the Player cannot access an MMS or RTSP URL from a Windows Media server. If the "Hide network tab" policy setting is enabled, the entire Network tab is hidden.
# 
# If you do not configure this policy setting, users can select the protocols to use on the Network tab.
# 
# If you disable this policy setting, the Protocols for MMS URLs and Multicast streams areas of the Network tab are not available and the Player cannot receive an MMS or RTSP stream from a Windows Media server.
Streaming Media Protocols:
  lgpo.set:
  - name: WindowsStreamingMediaProtocols
  - setting:
      HTTPCheckBox: boolean-placeholder
      MultiCastCheckBox: boolean-placeholder
      TCPCheckBox: boolean-placeholder
      UDPCheckBox: boolean-placeholder
      UDPPorts: text-placeholder
  - policy_class: User
