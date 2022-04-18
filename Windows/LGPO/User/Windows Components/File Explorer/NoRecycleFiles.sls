# windows:SUPPORTED_WindowsXP
#
# When a file or folder is deleted in File Explorer, a copy of the file or folder is placed in the Recycle Bin. Using this setting, you can change this behavior.
# 
# If you enable this setting, files and folders that are deleted using File Explorer will not be placed in the Recycle Bin and will therefore be permanently deleted.
# 
# If you disable or do not configure this setting, files and folders deleted using File Explorer will be placed in the Recyele Bin.
Do not move deleted files to the Recycle Bin:
  lgpo.set:
  - name: NoRecycleFiles
  - setting: Enabled
  - policy_class: User
