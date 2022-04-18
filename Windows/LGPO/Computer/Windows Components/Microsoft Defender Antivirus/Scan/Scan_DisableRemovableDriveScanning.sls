# windows:SUPPORTED_Windows8
#
# This policy setting allows you to manage whether or not to scan for malicious software and unwanted software in the contents of removable drives, such as USB flash drives, when running a full scan.
# 
#     If you enable this setting, removable drives will be scanned during any type of scan.
# 
#     If you disable or do not configure this setting, removable drives will not be scanned during a full scan. Removable drives may still be scanned during quick scan and custom scan.
Scan removable drives:
  lgpo.set:
  - name: Scan_DisableRemovableDriveScanning
  - setting: Enabled
  - policy_class: Machine
