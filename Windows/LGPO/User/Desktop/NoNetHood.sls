# windows:SUPPORTED_Win2k
#
# Removes the Network Locations icon from the desktop.
# 
# This setting only affects the desktop icon. It does not prevent users from connecting to the network or browsing for shared computers on the network.
# 
# Note: In operating systems earlier than Microsoft Windows Vista, this policy applies to the My Network Places icon.
Hide Network Locations icon on desktop:
  lgpo.set:
  - name: NoNetHood
  - setting: Enabled
  - policy_class: User
