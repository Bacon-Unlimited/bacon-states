# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to manage whether backups of only system volumes is allowed or both OS and data volumes can be backed up.
# 
# If you enable this policy setting, machine administrator/backup operator can backup only volumes hosting OS components and no data only volumes can be backed up.If you disable or do not configure this policy setting, backups can include both system or data volumes.
Allow only system backup:
  lgpo.set:
  - name: AllowOnlySystemBackup
  - setting: Enabled
  - policy_class: Machine
