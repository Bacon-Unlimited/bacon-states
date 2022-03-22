# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of BITS jobs that can be created by a user. By default, BITS limits the total number of jobs that can be created by a user to 60 jobs. You can use this setting to raise or lower the maximum number of BITS jobs a user can create.
# 
#           If you enable this policy setting, BITS will limit the maximum number of BITS jobs a user can create to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will use the default user BITS job limit of 300 jobs.
# 
#           Note: This limit must be lower than the setting specified in the "Maximum number of BITS jobs for this computer" policy setting, or 300 if the "Maximum number of BITS jobs for this computer" policy setting is not configured. BITS jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of BITS jobs for each user:
  lgpo.set:
  - name: BITS_MaxJobsPerUser
  - setting:
      BITS_MaxJobsPerUserList: decimal-placeholder
  - policy_class: Machine
