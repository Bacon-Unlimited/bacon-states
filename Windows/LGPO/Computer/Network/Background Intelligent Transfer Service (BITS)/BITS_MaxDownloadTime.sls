# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the amount of time that Background Intelligent Transfer Service (BITS) will take to download the files in a BITS job.
# 
#           The time limit applies only to the time that BITS is actively downloading files. When the cumulative download time exceeds this limit, the job is placed in the error state.
# 
#           By default BITS uses a maximum download time of 90 days (7,776,000 seconds).
# 
#           If you enable this policy setting, you can set the maximum job download time to a specified number of seconds.
# 
#           If you disable or do not configure this policy setting, the default value of 90 days (7,776,000 seconds) will be used.
Limit the maximum BITS job download time:
  lgpo.set:
  - name: BITS_MaxDownloadTime
  - setting:
      BITS_MaxDownloadSeconds: decimal-placeholder
  - policy_class: Machine
