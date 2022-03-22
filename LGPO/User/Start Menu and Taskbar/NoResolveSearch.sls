# windows:SUPPORTED_Win2k
#
# This policy setting prevents the system from conducting a comprehensive search of the target drive to resolve a shortcut.
# 
# If you enable this policy setting, the system does not conduct the final drive search. It just displays a message explaining that the file is not found.
# 
# If you disable or do not configure this policy setting, by default, when the system cannot find the target file for a shortcut (.lnk), it searches all paths associated with the shortcut. If the target file is located on an NTFS partition, the system then uses the target's file ID to find a path. If the resulting path is not correct, it conducts a comprehensive search of the target drive in an attempt to find the file.
# 
# Note: This policy setting only applies to target files on NTFS partitions. FAT partitions do not have this ID tracking and search capability.
# 
# Also, see the "Do not track Shell shortcuts during roaming" and the "Do not use the tracking-based method when resolving shell shortcuts" policy settings.
Do not use the search-based method when resolving shell shortcuts:
  lgpo.set:
  - name: NoResolveSearch
  - setting: Enabled
  - policy_class: User
