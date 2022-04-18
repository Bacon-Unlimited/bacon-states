# SUPPORTED_IE10
#
# This policy setting sets the data storage limit for all combined indexed databases for a user. When you set this policy setting, you provide the storage limit in MB. When the limit is reached, Internet Explorer notifies the user, and the user must delete indexed databases before an updated database can be saved on their computer. The default maximum storage limit for all indexed databases is 4 GB.
# 
# If you enable this policy setting, you can set the maximum storage limit for all indexed databases. The default is 4 GB.
# 
# If you disable or do not configure this policy setting, Internet Explorer will use the default maximum storage limit for all indexed databases. The default is 4 GB.
Set maximum indexed database storage limit for all domains:
  lgpo.set:
  - name: IndexedDB_TotalLimitInMB
  - setting:
      IndexedDB_TotalLimitInMBPart: decimal-placeholder
  - policy_class: User
