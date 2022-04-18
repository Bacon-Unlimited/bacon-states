# windows:SUPPORTED_WindowsVista
#
# This setting lets you suppress the Restore button in the previous versions property page when the user has selected a previous version of a file on a file share.
# 
# If you enable this policy setting, the Restore button is disabled when the user selects a previous version corresponding to a file on a file share.
# 
# If you disable this policy setting, the Restore button remains active for a previous version corresponding to a file on a file share. If the user clicks the Restore button, Windows attempts to restore the file from the file share.
# 
# If you do not configure this policy setting, it is disabled by default. The Restore button is active when the previous version is of a file on a file share.
Prevent restoring remote previous versions:
  lgpo.set:
  - name: DisableRemoteRestore_2
  - setting: Enabled
  - policy_class: Machine
