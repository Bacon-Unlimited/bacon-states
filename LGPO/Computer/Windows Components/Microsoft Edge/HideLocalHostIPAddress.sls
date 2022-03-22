# SUPPORTED_INTERNET_BROWSER_WIN10V1511
#
# This policy setting lets you decide whether an employee's LocalHost IP address shows while making calls using the WebRTC protocol.
# 
# If you enable this setting, LocalHost IP addresses are hidden while making calls using the WebRTC protocol.
# 
# If you disable or don't configure this setting, LocalHost IP addresses are shown while making calls using the WebRTC protocol.
Prevent using Localhost IP address for WebRTC:
  lgpo.set:
  - name: HideLocalHostIPAddress
  - setting: Enabled
  - policy_class: Machine
