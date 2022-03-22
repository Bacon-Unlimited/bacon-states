# windows:SUPPORTED_Windows8
#
# 
#           This policy setting turns off tile notifications.
# 
#           If you enable this policy setting, applications and system features will not be able to update their tiles and tile badges in the Start screen.
# 
#           If you disable or do not configure this policy setting, tile and badge notifications are enabled and can be turned off by the administrator or user.
# 
#           No reboots or service restarts are required for this policy setting to take effect.
#       
Turn off tile notifications:
  lgpo.set:
  - name: NoTileNotification
  - setting: Enabled
  - policy_class: User
