# SUPPORTED_WMP8
#
# This policy setting allows you to prevent Windows Media Player from downloading codecs.
# 
# If you enable this policy setting, the Player is prevented from automatically downloading codecs to your computer. In addition, the Download codecs automatically check box on the Player tab in the Player is not available.
# 
# If you disable this policy setting, codecs are automatically downloaded and the Download codecs automatically check box is not available.
# 
# If you do not configure this policy setting, users can change the setting for the Download codecs automatically check box.
Prevent Codec Download:
  lgpo.set:
  - name: PolicyCodecUpdate
  - setting: Enabled
  - policy_class: User
