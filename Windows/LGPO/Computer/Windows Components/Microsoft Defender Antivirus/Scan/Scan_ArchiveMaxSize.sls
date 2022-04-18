# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the maximum size of archive files such as .ZIP or .CAB that will be scanned. The value represents file size in kilobytes (KB). The default value is 0 and represents no limit to archive size for scanning.
# 
#     If you enable this setting, archive files less than or equal to the size specified will be scanned.
# 
#     If you disable or do not configure this setting, archive files will be scanned according to the default value.
Specify the maximum size of archive files to be scanned:
  lgpo.set:
  - name: Scan_ArchiveMaxSize
  - setting:
      Scan_ArchiveMaxSize: decimal-placeholder
  - policy_class: Machine
