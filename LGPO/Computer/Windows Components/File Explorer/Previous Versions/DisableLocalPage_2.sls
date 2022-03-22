# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you hide the list of previous versions of files that are on local disks. The previous versions could come from the on-disk restore points or from backup media.
# 
# If you enable this policy setting, users cannot list or restore previous versions of files on local disks.
# 
# If you disable this policy setting, users cannot list and restore previous versions of files on local disks.
# 
# If you do not configure this policy setting, it defaults to disabled.
Hide previous versions list for local files:
  lgpo.set:
  - name: DisableLocalPage_2
  - setting: Enabled
  - policy_class: Machine
