# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the maximum amount of disk space that can be used for the BITS peer cache, as a percentage of the total system disk size. BITS will add files to the peer cache and make those files available to peers until the cache content reaches the specified cache size. By default, BITS will use 1 percent of the total system disk for the peercache.
# 
#           If you enable this policy setting, you can enter the percentage of disk space to be used for the BITS peer cache. You can enter a value between 1 percent and 80 percent.
# 
#           If you disable or do not configure this policy setting, the default size of the BITS peer cache is 1 percent of the total system disk size.
# 
#           Note: This policy setting has no effect if the "Allow BITS peer caching" setting is disabled or not configured.
Limit the BITS Peercache size:
  lgpo.set:
  - name: BITS_MaxCacheSize
  - setting:
      BITS_MaxSize: decimal-placeholder
  - policy_class: Machine
