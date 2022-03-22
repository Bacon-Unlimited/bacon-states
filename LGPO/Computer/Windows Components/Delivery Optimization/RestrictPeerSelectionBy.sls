# windows:SUPPORTED_Windows_10_0
#
# Set this policy to restrict peer selection via selected option.
# 
# Options available are:
# 1 = Subnet mask (more options will be added in a future release).
# 
# Option 1 (Subnet mask) applies to both Download Mode LAN (1) and Group (2).
Select a method to restrict Peer Selection:
  lgpo.set:
  - name: RestrictPeerSelectionBy
  - setting:
      RestrictPeerSelectionBy: enum-placeholder
  - policy_class: Machine
