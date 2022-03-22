# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings of Notepad.
# By default, the user settings of Notepad synchronize between computers. Use the policy setting to prevent the user settings of Notepad from synchronization between computers. 
# If you enable this policy setting, the Notepad user settings continue to synchronize. 
# If you disable this policy setting, Notepad user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Notepad:
  lgpo.set:
  - name: Notepad
  - setting: Enabled
  - policy_class: User
