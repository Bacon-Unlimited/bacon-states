# windows:SUPPORTED_Windows8
#
# This policy setting configures the synchronization of user settings for the Finance app.
# By default, the user settings of Finance sync between computers. Use the policy setting to prevent the user settings of Finance from synchronizing between computers.
# If you enable this policy setting, Finance user settings continue to sync.
# If you disable this policy setting, Finance user settings are excluded from synchronization.
# If you do not configure this policy setting, any defined values will be deleted.
#       
Finance:
  lgpo.set:
  - name: Finance
  - setting: Enabled
  - policy_class: Machine
