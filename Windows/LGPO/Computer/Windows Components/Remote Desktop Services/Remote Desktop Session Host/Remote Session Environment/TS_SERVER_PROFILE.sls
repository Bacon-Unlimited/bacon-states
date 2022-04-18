# windows:SUPPORTED_Windows8
#
# This policy setting allows the administrator to configure the RemoteFX experience for Remote Desktop Session Host or Remote Desktop Virtualization Host servers. By default, the system will choose the best experience based on available nework bandwidth.
# 
# If you enable this policy setting, the RemoteFX experience could be set to one of the following options:
# 1. Let the system choose the experience for the network condition
# 2. Optimize for server scalability
# 3. Optimize for minimum bandwidth usage
# 
# If you disable or do not configure this policy setting, the RemoteFX experience will change dynamically based on the network condition."
#     
Configure RemoteFX Adaptive Graphics:
  lgpo.set:
  - name: TS_SERVER_PROFILE
  - setting:
      TS_SERVER_PROFILE_LEVELS: enum-placeholder
  - policy_class: Machine
