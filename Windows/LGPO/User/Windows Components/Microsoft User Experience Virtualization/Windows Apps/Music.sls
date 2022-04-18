# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Music app.
# By default, the user settings of Music sync between computers. Use the policy setting to prevent the user settings of Music from synchronizing between computers.
# If you enable this policy setting, Music user settings continue to sync.
# If you disable this policy setting, Music user settings are excluded from the synchronizing settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Music:
  lgpo.set:
  - name: Music
  - setting: Enabled
  - policy_class: User
