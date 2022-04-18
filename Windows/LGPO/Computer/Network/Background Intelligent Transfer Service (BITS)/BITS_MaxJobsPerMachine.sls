# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of BITS jobs that can be created for all users of the computer. By default, BITS limits the total number of jobs that can be created on the computer to 300 jobs. You can use this policy setting to raise or lower the maximum number of user BITS jobs.
# 
#           If you enable this policy setting, BITS will limit the maximum number of BITS jobs to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will use the default BITS job limit of 300 jobs.
# 
#           Note: BITS jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of BITS jobs for this computer:
  lgpo.set:
  - name: BITS_MaxJobsPerMachine
  - setting:
      BITS_MaxJobsPerMachineList: decimal-placeholder
  - policy_class: Machine
