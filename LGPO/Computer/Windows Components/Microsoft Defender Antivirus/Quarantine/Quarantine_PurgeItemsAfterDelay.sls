# windows:SUPPORTED_Windows8
#
# This policy setting defines the number of days items should be kept in the Quarantine folder before being removed.
# 
#     If you enable this setting, items will be removed from the Quarantine folder after the number of days specified.
# 
#     If you disable or do not configure this setting, items will be kept in the quarantine folder indefinitely and will not be automatically removed.
Configure removal of items from Quarantine folder:
  lgpo.set:
  - name: Quarantine_PurgeItemsAfterDelay
  - setting:
      Quarantine_PurgeItemsAfterDelay: decimal-placeholder
  - policy_class: Machine
