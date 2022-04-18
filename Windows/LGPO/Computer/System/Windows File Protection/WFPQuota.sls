# windows:SUPPORTED_WindowsPreVista
#
# This policy setting specifies the maximum amount of disk space that can be used for the Windows File Protection file cache.
# 
# Windows File Protection adds protected files to the cache until the cache content reaches the quota. If the quota is greater than 50 MB, Windows File Protection adds other important Windows XP files to the cache until the cache size reaches the quota.
# 
# If you enable this policy setting, enter the maximum amount of disk space to be used (in MB). To indicate that the cache size is unlimited, select "4294967295" as the maximum amount of disk space.
# 
# If you disable this policy setting or do not configure it, the default value is set to 50 MB on Windows XP Professional and is unlimited (4294967295 MB) on Windows Server 2003.
Limit Windows File Protection cache size:
  lgpo.set:
  - name: WFPQuota
  - setting:
      WFPQuota_Size: decimal-placeholder
  - policy_class: Machine
