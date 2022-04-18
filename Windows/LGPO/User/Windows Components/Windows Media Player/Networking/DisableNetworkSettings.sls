# SUPPORTED_WMP8
#
# This policy setting allows you to hide the Network tab.
# 
# If you enable this policy setting, the Network tab in Windows Media Player is hidden. The default network settings are used unless the user has previously defined network settings for the Player.
# 
# If you disable or do not configure this policy setting, the Network tab appears and users can use it to configure network settings.
Hide Network Tab:
  lgpo.set:
  - name: DisableNetworkSettings
  - setting: Enabled
  - policy_class: User
