# SUPPORTED_WindowsXPWindowsNETorBITS15
#
# This policy setting specifies the number of days a pending BITS job can remain inactive before the job is considered abandoned. By default BITS will wait 90 days before considering an inactive job abandoned. After a job is determined to be abandoned, the job is deleted from BITS and any downloaded files for the job are deleted from the disk.
#           Note: Any property changes to the job or any successful download action will reset this timeout.
# 
#           Consider increasing the timeout value if computers tend to stay offline for a long period of time and still have pending jobs. 
#           Consider decreasing this value if you are concerned about orphaned jobs occupying disk space.
# 
#           If you enable this policy setting, you can configure the inactive job timeout to specified number of days.
# 
#           If you disable or do not configure this policy setting, the default value of 90 (days) will be used for the inactive job timeout.
Timeout for inactive BITS jobs:
  lgpo.set:
  - name: BITS_Job_Timeout
  - setting:
      BITS_Job_Timeout_Time: decimal-placeholder
  - policy_class: Machine
