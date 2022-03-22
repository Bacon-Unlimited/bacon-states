# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Travel app.
# By default, the user settings of Travel sync between computers. Use the policy setting to prevent the user settings of Travel from synchronizing between computers.
# If you enable this policy setting, Travel user settings continue to sync.
# If you disable this policy setting, Travel user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Travel:
  lgpo.set:
  - name: Travel
  - setting: Enabled
  - policy_class: Machine
