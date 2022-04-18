# windows:SUPPORTED_WindowsPreVista
#
# Limits the percentage of the computer's disk space that can be used to store automatically cached offline files.
# 
# This setting also disables the "Amount of disk space to use for temporary offline files" option on the Offline Files tab. This prevents users from trying to change the option while a setting controls it.
# 
# Automatic caching can be set on any network share. When a user opens a file on the share, the system automatically stores a copy of the file on the user's computer.
# 
# This setting does not limit the disk space available for files that user's make available offline manually.
# 
# If you enable this setting, you can specify an automatic-cache disk space limit.
# 
# If you disable this setting, the system limits the space that automatically cached files occupy to 10 percent of the space on the system drive.
# 
# If you do not configure this setting, disk space for automatically cached files is limited to 10 percent of the system drive by default, but users can change it.
# 
# Tip: To change the amount of disk space used for automatic caching without specifying a setting, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then use the slider bar associated with the "Amount of disk space to use for temporary offline files" option.
Default cache size:
  lgpo.set:
  - name: Pol_DefCacheSize
  - setting:
      Lbl_DefCacheSizeSpin: decimal-placeholder
  - policy_class: Machine
