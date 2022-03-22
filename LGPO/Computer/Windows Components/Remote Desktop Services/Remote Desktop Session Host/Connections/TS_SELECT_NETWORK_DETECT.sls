# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify how the Remote Desktop Protocol will try to detect the network quality (bandwidth and latency).
# 
# You can choose to disable Connect Time Detect, Continuous Network Detect, or both Connect Time Detect and Continuous Network Detect. 
# 
# If you disable Connect Time Detect, Remote Desktop Protocol will not determine the network quality at the connect time, and it will assume that all traffic to this server originates from a low-speed connection.
# 
# If you disable Continuous Network Detect, Remote Desktop Protocol will not try to adapt the remote user experience to varying network quality. 
# 
# If you disable Connect Time Detect and Continuous Network Detect, Remote Desktop Protocol will not try to determine the network quality at the connect time; instead it will assume that all traffic to this server originates from a low-speed connection, and it will not try to adapt the user experience to varying network quality.
# 
# If you disable or do not configure this policy setting, Remote Desktop Protocol will spend up to a few seconds trying to determine the network quality prior to the connection, and it will continuously try to adapt the user experience to varying network quality.
# 
Select network detection on the server:
  lgpo.set:
  - name: TS_SELECT_NETWORK_DETECT
  - setting:
      TS_SELECT_NETWORK_DETECT_LEVEL: enum-placeholder
  - policy_class: Machine
