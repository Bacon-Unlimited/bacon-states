# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the maximum age of files in the Background Intelligent Transfer Service (BITS) peer cache. In order to make the most efficient use of disk space, by default BITS removes any files in the peer cache that have not been accessed in the past 90 days.
# 
#           If you enable this policy setting, you can specify in days the maximum age of files in the cache. You can enter a value between 1 and 120 days.
# 
#           If you disable or do not configure this policy setting, files that have not been accessed for the past 90 days will be removed from the peer cache.
# 
#           Note: This policy setting has no effect if the "Allow BITS Peercaching" policy setting is disabled or not configured.
Limit the age of files in the BITS Peercache:
  lgpo.set:
  - name: BITS_MaxContentAge
  - setting:
      BITS_MaxContentAgeList: decimal-placeholder
  - policy_class: Machine
