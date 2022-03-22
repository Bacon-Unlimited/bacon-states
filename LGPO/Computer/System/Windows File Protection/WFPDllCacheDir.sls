# windows:SUPPORTED_WindowsPreVista
#
# This policy setting specifies an alternate location for the Windows File Protection cache.
# 
# If you enable this policy setting, enter the fully qualified local path to the new location in the "Cache file path" box.
# 
# If you disable this setting or do not configure it, the Windows File Protection cache is located in the %Systemroot%\System32\Dllcache directory.
# 
# Note: Do not put the cache on a network shared directory.
Specify Windows File Protection cache location:
  lgpo.set:
  - name: WFPDllCacheDir
  - setting:
      WFPDllCacheDirBox: text-placeholder
  - policy_class: Machine
