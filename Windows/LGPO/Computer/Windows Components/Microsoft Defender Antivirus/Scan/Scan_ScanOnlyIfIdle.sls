# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scheduled scans to start only when your computer is on but not in use.
# 
#     If you enable or do not configure this setting, scheduled scans will only run when the computer is on but not in use.
# 
#     If you disable this setting, scheduled scans will run at the scheduled time.
Start the scheduled scan only when computer is on but not in use:
  lgpo.set:
  - name: Scan_ScanOnlyIfIdle
  - setting: Enabled
  - policy_class: Machine
