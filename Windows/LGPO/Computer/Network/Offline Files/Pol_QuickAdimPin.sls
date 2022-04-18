# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn on economical application of administratively assigned Offline Files.
# 
# If you enable or do not configure this policy setting, only new files and folders in administratively assigned folders are synchronized at logon. Files and folders that are already available offline are skipped and are synchronized later.
# 
# If you disable this policy setting, all administratively assigned folders are synchronized at logon.
Turn on economical application of administratively assigned Offline Files:
  lgpo.set:
  - name: Pol_QuickAdimPin
  - setting: Enabled
  - policy_class: Machine
