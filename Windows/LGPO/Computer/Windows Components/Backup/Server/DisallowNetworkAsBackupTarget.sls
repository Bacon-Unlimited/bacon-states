# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether backups of a machine can run to a network share or not.
# 
# If you enable this policy setting, machine administrator/backup operator cannot use Windows Server Backup to run backups to a network share.
# 
# If you disable or do not configure this policy setting, there is no restriction on network share being backup target.
Disallow network as backup target:
  lgpo.set:
  - name: DisallowNetworkAsBackupTarget
  - setting: Enabled
  - policy_class: Machine
