# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scans for malicious software and unwanted software in archive files such as .ZIP or .CAB files.
# 
#     If you enable or do not configure this setting, archive files will be scanned.
# 
#     If you disable this setting, archive files will not be scanned.
Scan archive files:
  lgpo.set:
  - name: Scan_DisableArchiveScanning
  - setting: Enabled
  - policy_class: Machine
