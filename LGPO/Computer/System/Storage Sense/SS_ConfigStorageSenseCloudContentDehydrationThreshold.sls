# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can dehydrate cloud-backed content that hasn’t been opened in a certain amount of days.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the minimum number of days a cloud-backed file can remain unopened before Storage Sense dehydrates it from the sync root. Supported values are: 0 - 365.
# If you set this value to zero, Storage Sense will not dehydrate any cloud-backed content. The default value is 0, or never dehydrating cloud-backed content.
# 
# Disabled or Not Configured:
# By default, Storage Sense will not dehydrate any cloud-backed content. Users can configure this setting in Storage settings.
#     
Configure Storage Sense Cloud Content dehydration threshold:
  lgpo.set:
  - name: SS_ConfigStorageSenseCloudContentDehydrationThreshold
  - setting:
      StorageSenseCloudContentDehydrationThreshold: decimal-placeholder
  - policy_class: Machine
