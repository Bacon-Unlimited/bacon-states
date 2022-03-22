# windows:SUPPORTED_WindowsPreVista
#
# Determines whether offline files are synchonized before a computer is suspended.
# 
# If you enable this setting, offline files are synchronized whenever the computer is suspended. Setting the synchronization action to "Quick" ensures only that all files in the cache are complete. Setting the synchronization action to "Full" ensures that all cached files and folders are up-to-date with the most current version.
# 
# If you disable or do not configuring this setting, files are not synchronized when the computer is suspended.
# 
# Note: If the computer is suspended by closing the display on a portable computer, files are not synchronized. If multiple users are logged on to the computer at the time the computer is suspended, a synchronization is not performed.
Synchronize offline files before suspend:
  lgpo.set:
  - name: Pol_SyncAtSuspend_1
  - setting:
      Lbl_SyncAtSuspendCombo: enum-placeholder
  - policy_class: User
