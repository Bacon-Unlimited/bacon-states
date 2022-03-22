# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you hide entries in the list of previous versions of a file in which the previous version is located on backup media. Previous versions can come from the on-disk restore points or the backup media.
# 
# If you enable this policy setting, users cannot see any previous versions corresponding to backup copies, and can see only previous versions corresponding to on-disk restore points.
# 
# If you disable this policy setting, users can see previous versions corresponding to backup copies as well as previous versions corresponding to on-disk restore points.
# 
# If you do not configure this policy setting, it is disabled by default.
Hide previous versions of files on backup location:
  lgpo.set:
  - name: HideBackupEntries_2
  - setting: Enabled
  - policy_class: Machine
