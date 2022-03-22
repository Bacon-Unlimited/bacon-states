# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Enable this policy to specify the method by which the auto-restart required notification is dismissed. When a restart is required to install updates, the auto-restart required notification is displayed. By default, the notification is automatically dismissed after 25 seconds.
# 
# The method can be set to require user action to dismiss the notification.
# 
# If you disable or do not configure this policy, the default method will be used.
#       
Configure auto-restart required notification for updates:
  lgpo.set:
  - name: AutoRestartRequiredNotificationDismissal
  - setting:
      AutoRestartRequiredNotificationDismissal: enum-placeholder
  - policy_class: Machine
