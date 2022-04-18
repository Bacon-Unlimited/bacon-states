# windows:SUPPORTED_WindowsXP
#
# Specifies whether or not to log events when the pruning service on a domain controller attempts to contact a computer before pruning the computer's printers.
# 
#           The pruning service periodically contacts computers that have published printers to verify that the printers are still available for use. If a computer does not respond to the contact attempt, the attempt is retried a specified number of times, at a specified interval. The "Directory pruning retry" setting determines the number of times the attempt is retried; the default value is two retries. The "Directory Pruning Interval" setting determines the time interval between retries; the default value is every eight hours. If the computer has not responded by the last contact attempt, its printers are pruned from the directory.
# 
#           If you enable this policy setting, the contact events are recorded in the event log.
# 
#           If you disable or do not configure this policy setting, the contact events are not recorded in the event log.
# 
#           Note: This setting does not affect the logging of pruning events; the actual pruning of a printer is always logged.
# 
#           Note: This setting is used only on domain controllers.
Log directory pruning retry events:
  lgpo.set:
  - name: PruningRetryLog
  - setting: Enabled
  - policy_class: Machine
