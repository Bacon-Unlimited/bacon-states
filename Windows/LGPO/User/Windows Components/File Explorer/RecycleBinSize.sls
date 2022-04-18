# windows:SUPPORTED_WindowsPreVista
#
# Limits the percentage of a volume's disk space that can be used to store deleted files.
# 
# If you enable this setting, the user has a maximum amount of disk space that may be used for the Recycle Bin on their workstation.
# 
# If you disable or do not configure this setting, users can change the total amount of disk space used by the Recycle Bin.
# 
# Note: This setting is applied to all volumes.
Maximum allowed Recycle Bin size:
  lgpo.set:
  - name: RecycleBinSize
  - setting:
      RecycleBinSizeSpin: decimal-placeholder
  - policy_class: User
