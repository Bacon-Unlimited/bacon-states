# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether backups of a machine can run to an optical media or not.
# 
# If you enable this policy setting, machine administrator/backup operator cannot use Windows Server Backup to run backups to an optical media.
# 
# If you disable or do not configure this policy setting, there is no restriction on optical media being backup target.
Disallow optical media as backup target:
  lgpo.set:
  - name: DisallowOpticalMediaAsBackupTarget
  - setting: Enabled
  - policy_class: Machine
