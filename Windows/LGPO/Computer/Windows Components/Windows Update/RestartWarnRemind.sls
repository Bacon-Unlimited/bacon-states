# WU_SUPPORTED_Server2016_Through_Server2022_Or_Windows10
#
# Enable this policy to control when notifications are displayed to warn users about a scheduled restart for the update installation deadline. Users are not able to postpone the scheduled restart once the deadline has been reached and the restart is automatically executed.
# 
# Specifies the amount of time prior to a scheduled restart to display the warning reminder to the user.
# 
# You can specify the amount of time prior to a scheduled restart to notify the user that the auto restart is imminent to allow them time to save their work.
# 
# If you disable or do not configure this policy, the default notification behaviors will be used.
#       
Configure auto-restart warning notifications schedule for updates:
  lgpo.set:
  - name: RestartWarnRemind
  - setting:
      RestartWarn: enum-placeholder
      RestartWarnRemind: enum-placeholder
  - policy_class: Machine
