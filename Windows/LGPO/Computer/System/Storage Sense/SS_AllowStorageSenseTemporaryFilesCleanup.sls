# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# When Storage Sense runs, it can delete the users temporary files that are not in use.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# Storage Sense will delete the users temporary files that are not in use. Users cannot disable this setting in Storage settings.
# 
# Disabled:
# Storage Sense will not delete the users temporary files. Users cannot enable this setting in Storage settings.
# 
# Not Configured:
# By default, Storage Sense will delete the users temporary files. Users can configure this setting in Storage settings.
#     
Allow Storage Sense Temporary Files cleanup:
  lgpo.set:
  - name: SS_AllowStorageSenseTemporaryFilesCleanup
  - setting: Enabled
  - policy_class: Machine
