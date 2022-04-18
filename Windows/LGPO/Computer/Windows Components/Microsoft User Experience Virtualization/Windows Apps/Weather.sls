# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Weather app.
# By default, the user settings of Weather sync between computers. Use the policy setting to prevent the user settings of Weather from synchronizing between computers.
# If you enable this policy setting, Weather user settings continue to sync.
# If you disable this policy setting, Weather user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Weather:
  lgpo.set:
  - name: Weather
  - setting: Enabled
  - policy_class: Machine
