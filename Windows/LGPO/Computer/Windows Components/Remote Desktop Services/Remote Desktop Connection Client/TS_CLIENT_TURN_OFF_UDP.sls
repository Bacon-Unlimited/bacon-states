# terminalserver:TS_SUPPORTED_Windows8_or_ARM
#
# This policy setting specifies whether the UDP protocol will be used to access servers via Remote Desktop Protocol. 
# 
# If you enable this policy setting, Remote Desktop Protocol traffic will only use the TCP protocol.
# 
# If you disable or do not configure this policy setting, Remote Desktop Protocol traffic will attempt to use both TCP and UDP protocols.
# 
Turn Off UDP On Client:
  lgpo.set:
  - name: TS_CLIENT_TURN_OFF_UDP
  - setting: Enabled
  - policy_class: Machine
