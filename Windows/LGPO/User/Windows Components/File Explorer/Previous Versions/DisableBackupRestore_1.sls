# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file, in which the previous version is stored on a backup.
# 
# If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a backup.
# 
# If you disable this policy setting, the Restore button remains active for a previous version corresponding to a backup. If the Restore button is clicked, Windows attempts to restore the file from the backup media.
# 
# If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a local file and stored on the backup.
Prevent restoring previous versions from backups:
  lgpo.set:
  - name: DisableBackupRestore_1
  - setting: Enabled
  - policy_class: User
