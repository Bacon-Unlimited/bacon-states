# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scanning for network files. It is recommended that you do not enable this setting.
# 
#     If you enable this setting, network files will be scanned.
# 
#     If you disable or do not configure this setting, network files will not be scanned.
Scan network files:
  lgpo.set:
  - name: Scan_DisableScanningNetworkFiles
  - setting: Enabled
  - policy_class: Machine
