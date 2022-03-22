# windows:SUPPORTED_WindowsVista
#
# This policy setting lets you hide the list of previous versions of files that are on file shares. The previous versions come from the on-disk restore points on the file share.
# 
# If you enable this policy setting, users cannot list or restore previous versions of files on file shares.
# 
# If you disable this policy setting, users can list and restore previous versions of files on file shares.
# 
# If you do not configure this policy setting, it is disabled by default.
Hide previous versions list for remote files:
  lgpo.set:
  - name: DisableRemotePage_1
  - setting: Enabled
  - policy_class: User
