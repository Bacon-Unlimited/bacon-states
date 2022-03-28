# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can delete files in the users Downloads folder if they havent been opened for more than a certain number of days.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the minimum number of days a file can remain unopened before Storage Sense deletes it from Downloads folder. Supported values are: 0 - 365.
# If you set this value to zero, Storage Sense will not delete files in the users Downloads folder. The default is 0, or never deleting files in the Downloads folder.
# 
# Disabled or Not Configured:
# By default, Storage Sense will not delete files in the users Downloads folder. Users can configure this setting in Storage settings.
#     
Configure Storage Storage Downloads cleanup threshold:
  lgpo.set:
  - name: SS_ConfigStorageSenseDownloadsCleanupThreshold
  - setting:
      StorageSenseDownloadsCleanupThreshold: decimal-placeholder
  - policy_class: Machine
