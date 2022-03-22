# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether run-once backups of a machine can be run or not.
# 
# If you enable this policy setting, machine administrator/backup operator cannot use Windows Server Backup to run non-scheduled run-once backups.
# 
# If you disable or do not configure this policy setting, there is no restriction on running run-once backups.
Disallow run-once backups:
  lgpo.set:
  - name: DisallowRunOnceBackups
  - setting: Enabled
  - policy_class: Machine
