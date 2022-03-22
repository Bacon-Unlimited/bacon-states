# windows:SUPPORTED_Windows8
#
# 
#         This policy controls whether the print job name will be included in print event logs.
# 
#         If you disable or do not configure this policy setting, the print job name will not be included.
# 
#         If you enable this policy setting, the print job name will be included in new log entries.
# 
#         Note: This setting does not apply to Branch Office Direct Printing jobs.
#       
Allow job name in event logs:
  lgpo.set:
  - name: ShowJobTitleInEventLogs
  - setting: Enabled
  - policy_class: Machine
