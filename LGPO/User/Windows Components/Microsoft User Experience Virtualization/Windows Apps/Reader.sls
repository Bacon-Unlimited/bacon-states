# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Reader app.
# By default, the user settings of Reader sync between computers. Use the policy setting to prevent the user settings of Reader from synchronizing between computers.
# If you enable this policy setting, Reader user settings continue to sync.
# If you disable this policy setting, Reader user settings are excluded from the synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Reader:
  lgpo.set:
  - name: Reader
  - setting: Enabled
  - policy_class: User
