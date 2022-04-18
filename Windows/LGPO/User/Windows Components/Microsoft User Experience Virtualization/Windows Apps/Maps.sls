# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Maps app.
# By default, the user settings of Maps sync between computers. Use the policy setting to prevent the user settings of Maps from synchronizing between computers.
# If you enable this policy setting, Maps user settings continue to sync.
# If you disable this policy setting, Maps user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Maps:
  lgpo.set:
  - name: Maps
  - setting: Enabled
  - policy_class: User
