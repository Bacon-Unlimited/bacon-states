# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether backups of a machine can run to locally attached storage or not.
# 
# If you enable this policy setting, machine administrator/backup operator cannot use Windows Server Backup to run backups to a locally attached storage or disk.
# 
# If you disable or do not configure this policy setting, there is no restriction on locally attached storage or disk being backup target.
Disallow locally attached storage as backup target:
  lgpo.set:
  - name: DisallowLocallyAttachedStorageAsBackupTarget
  - setting: Enabled
  - policy_class: Machine
