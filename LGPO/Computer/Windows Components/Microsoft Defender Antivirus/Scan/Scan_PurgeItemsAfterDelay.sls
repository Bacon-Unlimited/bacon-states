# windows:SUPPORTED_Windows8
#
# This policy setting defines the number of days items should be kept in the scan history folder before being permanently removed. The value represents the number of days to keep items in the folder. If set to zero, items will be kept forever and will not be automatically removed. By default, the value is set to 30 days.
# 
#     If you enable this setting, items will be removed from the scan history folder after the number of days specified.
# 
#     If you disable or do not configure this setting, items will be kept in the scan history folder for the default number of days.
Turn on removal of items from scan history folder:
  lgpo.set:
  - name: Scan_PurgeItemsAfterDelay
  - setting:
      Scan_PurgeItemsAfterDelay: decimal-placeholder
  - policy_class: Machine
