# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the amount of disk space that can be used to store offline files. This includes the space used by automatically cached files and files that are specifically made available offline. Files can be automatically cached if the user accesses a file on an automatic caching network share.
# 
# This setting also disables the ability to adjust, through the Offline Files control panel applet, the disk space limits on the Offline Files cache. This prevents users from trying to change the option while a policy setting controls it.
# 
# If you enable this policy setting, you can specify the disk space limit (in megabytes) for offline files and also specify how much of that disk space can be used by automatically cached files.
# 
# If you disable this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located.  The limit for automatically cached files is 100 percent of the total disk space limit.
# 
# If you do not configure this policy setting, the system limits the space that offline files occupy to 25 percent of the total space on the drive where the Offline Files cache is located. The limit for automatically cached files is 100 percent of the total disk space limit.  However, the users can change these values using the Offline Files control applet.
# 
# If you enable this setting and specify a total size limit greater than the size of the drive hosting the Offline Files cache, and that drive is the system drive, the total size limit is automatically adjusted downward to 75 percent of the size of the drive.  If the cache is located on a drive other than the system drive, the limit is automatically adjusted downward to 100 percent of the size of the drive.
# 
# If you enable this setting and specify a total size limit less than the amount of space currently used by the Offline Files cache, the total size limit is automatically adjusted upward to the amount of space currently used by offline files.  The cache is then considered full.
# 
# If you enable this setting and specify an auto-cached space limit greater than the total size limit, the auto-cached limit is automatically adjusted downward to equal the total size limit.
# 
# This setting replaces the Default Cache Size setting used by pre-Windows Vista systems.
Limit disk space used by Offline Files:
  lgpo.set:
  - name: Pol_CacheSize
  - setting:
      Lbl_AutoCacheSizeSpin: decimal-placeholder
      Lbl_TotalCacheSizeSpin: decimal-placeholder
  - policy_class: Machine
