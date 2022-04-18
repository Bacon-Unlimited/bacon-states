# windows:SUPPORTED_WindowsVista
#
# This policy setting limits the number of ranges that can be added to a file in a BITS job. By default, files in a BITS job are limited to 500 ranges per file. You can use this setting to raise or lower the maximum number ranges per file.
# 
#           If you enable this policy setting, BITS will limit the maximum number of ranges that can be added to a file to the specified number.
# 
#           If you disable or do not configure this policy setting, BITS will limit ranges to 500 ranges per file.
# 
#           Note: BITS Jobs created by services and the local administrator account do not count toward this limit.
Limit the maximum number of ranges that can be added to the file in a BITS job:
  lgpo.set:
  - name: BITS_MaxRangesPerFile
  - setting:
      BITS_MaxRangesPerFileList: decimal-placeholder
  - policy_class: Machine
