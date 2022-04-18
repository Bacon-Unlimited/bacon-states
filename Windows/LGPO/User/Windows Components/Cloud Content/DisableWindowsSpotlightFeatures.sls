# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting lets you turn off all Windows Spotlight features at once.
# 
# If you enable this policy setting, Windows spotlight on lock screen, Windows tips, Microsoft consumer features and other related features will be turned off. You should enable this policy setting if your goal is to minimize network traffic from target devices.
# 
# If you disable or do not configure this policy setting, Windows spotlight features are allowed and may be controlled individually using their corresponding policy settings.
Turn off all Windows spotlight features:
  lgpo.set:
  - name: DisableWindowsSpotlightFeatures
  - setting: Enabled
  - policy_class: User
