# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the News app.
# By default, the user settings of News sync between computers. Use the policy setting to prevent the user settings of News from synchronizing between computers.
# If you enable this policy setting, News user settings continue to sync.
# If you disable this policy setting, News user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
News:
  lgpo.set:
  - name: News
  - setting: Enabled
  - policy_class: User
