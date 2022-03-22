# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings of WordPad.
# By default, the user settings of WordPad synchronize between computers. Use the policy setting to prevent the user settings of WordPad from synchronization between computers. 
# If you enable this policy setting, the WordPad user settings continue to synchronize. 
# If you disable this policy setting, WordPad user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
WordPad:
  lgpo.set:
  - name: Wordpad
  - setting: Enabled
  - policy_class: Machine
