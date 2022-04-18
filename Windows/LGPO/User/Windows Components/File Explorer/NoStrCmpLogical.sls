# windows:SUPPORTED_Windows7
#
# 
# This policy setting allows you to have file names sorted literally (as in Windows 2000 and earlier) rather than in numerical order.
# If you enable this policy setting, File Explorer will sort file names by each digit in a file name (for example, 111 < 22 < 3).
# If you disable or do not configure this policy setting, File Explorer will sort file names by increasing number value (for example, 3 < 22 < 111).
#       
Turn off numerical sorting in File Explorer:
  lgpo.set:
  - name: NoStrCmpLogical
  - setting: Enabled
  - policy_class: User
