# windows:SUPPORTED_WindowsPreVista
#
# Prevents the anchor window from being displayed when Windows Media Player is in skin mode.
# 
# This policy hides the anchor window when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays is not available.
# 
# When this policy is not configured or disabled, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.
# 
# When this policy is not configured and the Set and Lock Skin policy is enabled, some options in the anchor window are not available.
Do Not Show Anchor:
  lgpo.set:
  - name: DoNotShowAnchor
  - setting: Enabled
  - policy_class: User
