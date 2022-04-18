# SUPPORTED_IE7
#
# This policy setting controls whether to have background synchronization for feeds and Web Slices.
# 
# If you enable this policy setting, the ability to synchronize feeds and Web Slices in the background is turned off.
# 
# If you disable or do not configure this policy setting, the user can synchronize feeds and Web Slices in the background.
Turn off background synchronization for feeds and Web Slices:
  lgpo.set:
  - name: Disable_Background_Syncing
  - setting: Enabled
  - policy_class: User
