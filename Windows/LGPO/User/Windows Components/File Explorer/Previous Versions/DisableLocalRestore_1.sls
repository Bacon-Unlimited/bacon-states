# SUPPORTED_Vista_through_Win7
#
# This policy setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a local file.
# 
# If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a local file.
# 
# If you disable this policy setting, the Restore button remains active for a previous version corresponding to a local file. If the user clicks the Restore button, Windows attempts to restore the file from the local disk.
# 
# If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a local file.
Prevent restoring local previous versions:
  lgpo.set:
  - name: DisableLocalRestore_1
  - setting: Enabled
  - policy_class: User
