# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# This policy setting allows you to control whether users receive notifications for auto restarts for update installations including reminder and warning notifications.
# 
# Enable this policy to turn off all auto restart notifications.
# 
# If you disable or do not configure this policy, the default notification behaviors will be unchanged.
#       
Turn off auto-restart notifications for update installations:
  lgpo.set:
  - name: AutoRestartNotificationDisable
  - setting: Enabled
  - policy_class: Machine
