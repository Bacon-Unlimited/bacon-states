# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the maximum directory depth level into which archive files such as .ZIP or .CAB are unpacked during scanning. The default directory depth level is 0.
# 
#     If you enable this setting, archive files will be scanned to the directory depth level specified.
# 
#     If you disable or do not configure this setting, archive files will be scanned to the default directory depth level.
Specify the maximum depth to scan archive files:
  lgpo.set:
  - name: Scan_ArchiveMaxDepth
  - setting:
      Scan_ArchiveMaxDepth: decimal-placeholder
  - policy_class: Machine
