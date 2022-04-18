# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of files that a BITS job can contain. By default, a BITS job is limited to 200 files. You can use this setting to raise or lower the maximum number of files a BITS jobs can contain.
# 
#           If you enable this policy setting, BITS will limit the maximum number of files a job can contain to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will use the default value of 200 for the maximum number of files a job can contain.
# 
#           Note: BITS Jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of files allowed in a BITS job:
  lgpo.set:
  - name: BITS_MaxFilesPerJob
  - setting:
      BITS_MaxFilesPerJobList: decimal-placeholder
  - policy_class: Machine
