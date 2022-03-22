# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Enable this policy to specify when auto-restart reminders are displayed.
# 
# You can specify the amount of time prior to a scheduled restart to notify the user.
# 
# If you disable or do not configure this policy, the default period will be used.
#       
Configure auto-restart reminder notifications for updates:
  lgpo.set:
  - name: AutoRestartNotificationConfig
  - setting:
      AutoRestartNotificationSchd: enum-placeholder
  - policy_class: Machine
