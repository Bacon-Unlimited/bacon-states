# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scanning mapped network drives.
# 
#     If you enable this setting, mapped network drives will be scanned.
# 
#     If you disable or do not configure this setting, mapped network drives will not be scanned.
Run full scan on mapped network drives:
  lgpo.set:
  - name: Scan_DisableScanningMappedNetworkDrivesForFullScan
  - setting: Enabled
  - policy_class: Machine
