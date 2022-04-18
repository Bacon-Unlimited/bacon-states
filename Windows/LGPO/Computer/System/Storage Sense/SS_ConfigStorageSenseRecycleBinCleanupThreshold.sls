# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can delete files in the users Recycle Bin if they have been there for over a certain amount of days.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the minimum age threshold (in days) of a file in the Recycle Bin before Storage Sense will delete it. Supported values are: 0 - 365.
# If you set this value to zero, Storage Sense will not delete files in the users Recycle Bin. The default is 30 days.
# 
# Disabled or Not Configured:
# By default, Storage Sense will delete files in the users Recycle Bin that have been there for over 30 days. Users can configure this setting in Storage settings.
#     
Configure Storage Sense Recycle Bin cleanup threshold:
  lgpo.set:
  - name: SS_ConfigStorageSenseRecycleBinCleanupThreshold
  - setting:
      StorageSenseRecycleBinCleanupThreshold: decimal-placeholder
  - policy_class: Machine
