# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of user settings of Calculator.
# By default, the user settings of Calculator synchronize between computers. Use the policy setting to prevent the user settings of Calculator from synchronization between computers. 
# If you enable this policy setting, the Calculator user settings continue to synchronize. 
# If you disable this policy setting, Calculator user settings are excluded from the synchronization settings.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Calculator:
  lgpo.set:
  - name: Calculator
  - setting: Enabled
  - policy_class: User
