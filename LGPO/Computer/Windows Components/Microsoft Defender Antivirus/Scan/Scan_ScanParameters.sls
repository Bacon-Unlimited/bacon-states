# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the scan type to use during a scheduled scan. Scan type options are:
#     1 = Quick Scan (default)
#     2 = Full Scan
# 
#     If you enable this setting, the scan type will be set to the specified value.
# 
#     If you disable or do not configure this setting, the default scan type will used.
Specify the scan type to use for a scheduled scan:
  lgpo.set:
  - name: Scan_ScanParameters
  - setting:
      Scan_ScanParameters: enum-placeholder
  - policy_class: Machine
