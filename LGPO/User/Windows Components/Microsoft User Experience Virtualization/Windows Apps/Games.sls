# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Games app.
# By default, the user settings of Games sync between computers. Use the policy setting to prevent the user settings of Games from synchronizing between computers.
# If you enable this policy setting, Games user settings continue to sync.
# If you disable this policy setting, Games user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Games:
  lgpo.set:
  - name: Games
  - setting: Enabled
  - policy_class: User
