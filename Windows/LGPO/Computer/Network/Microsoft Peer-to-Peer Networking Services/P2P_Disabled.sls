# windows:SUPPORTED_WindowsXPSP2
#
# This setting turns off Microsoft Peer-to-Peer Networking Services in its entirety, and will cause all dependent applications to stop working.
# 
# Peer-to-Peer protocols allow for applications in the areas of RTC, collaboration, content distribution and distributed processing.
# 
# If you enable this setting, peer-to-peer protocols will be turned off.
# 
# If you disable this setting or do not configure it, the peer-to-peer protocols will be turned on.
Turn off Microsoft Peer-to-Peer Networking Services:
  lgpo.set:
  - name: P2P_Disabled
  - setting: Enabled
  - policy_class: Machine
