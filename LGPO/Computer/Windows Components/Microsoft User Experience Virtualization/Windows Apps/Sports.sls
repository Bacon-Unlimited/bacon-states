# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Sports app.
# By default, the user settings of Sports sync between computers. Use the policy setting to prevent the user settings of Sports from synchronizing between computers.
# If you enable this policy setting, Sports user settings continue to sync.
# If you disable this policy setting, Sports user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Sports:
  lgpo.set:
  - name: Sports
  - setting: Enabled
  - policy_class: Machine
