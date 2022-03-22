# windows:SUPPORTED_Win2k
#
# This policy setting disables the detection of slow network connections. 
# 
# Slow link detection measures the speed of the connection between a user's computer and the remote server that stores the roaming user profile. When the system detects a slow link, the related policy settings in this folder tell the computer how to respond.
# 
# If you enable this policy setting, the system does not detect slow connections or recognize any connections as being slow. As a result, the system does not respond to slow connections to user profiles, and it ignores the policy settings that tell the system how to respond to a slow connection.
# 
# If you disable this policy setting or do not configure it, slow link detection is enabled. The system measures the speed of the connection between the user's computer and profile server. If the connection is slow (as defined by the "Slow network connection timeout for user profiles" policy setting), the system applies the other policy settings set in this folder to determine how to proceed. By default, when the connection is slow, the system loads the local copy of the user profile.
Disable detection of slow network connections:
  lgpo.set:
  - name: EnableSlowLinkDetect
  - setting: Enabled
  - policy_class: Machine
