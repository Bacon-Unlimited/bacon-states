# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage whether or not end users can pause a scan in progress.
# 
#     If you enable or do not configure this setting, a new context menu will be added to the task tray icon to allow the user to pause a scan.
# 
#     If you disable this setting, users will not be able to pause scans.
Allow users to pause scan:
  lgpo.set:
  - name: Scan_AllowPause
  - setting: Enabled
  - policy_class: Machine
