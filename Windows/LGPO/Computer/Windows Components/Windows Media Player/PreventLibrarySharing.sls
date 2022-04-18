# SUPPORTED_WMP11
#
# This policy setting allows you to prevent media sharing from Windows Media Player.
# 
# If you enable this policy setting, any user on this computer is prevented from sharing digital media content from Windows Media Player with other computers and devices that are on the same network. Media sharing is disabled from Windows Media Player or from programs that depend on the Player's media sharing feature.
# 
# If you disable or do not configure this policy setting, anyone using Windows Media Player can turn media sharing on or off.
Prevent Media Sharing:
  lgpo.set:
  - name: PreventLibrarySharing
  - setting: Enabled
  - policy_class: Machine
