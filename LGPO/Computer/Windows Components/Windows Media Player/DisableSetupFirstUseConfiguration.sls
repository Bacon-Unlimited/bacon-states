# SUPPORTED_WMP9
#
# This policy setting allows you to prevent the anchor window from being displayed when Windows Media Player is in skin mode.
# 
# If you enable this policy setting, the anchor window is hidden when the Player is in skin mode. In addition, the option on the Player tab in the Player that enables users to choose whether the anchor window displays is not available.
# 
# If you disable or do not configure this policy setting, users can show or hide the anchor window when the Player is in skin mode by using the Player tab in the Player.
# 
# If you do not configure this policy setting, and the "Set and lock skin" policy setting is enabled, some options in the anchor window are not available.
Do Not Show First Use Dialog Boxes:
  lgpo.set:
  - name: DisableSetupFirstUseConfiguration
  - setting: Enabled
  - policy_class: Machine
