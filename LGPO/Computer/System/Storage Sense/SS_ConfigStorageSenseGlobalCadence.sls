# windows:SUPPORT_WINDOWS_10_0_RS6
#
# 
# Storage Sense can automatically clean some of the users files to free up disk space.
# 
# If the group policy "Allow Storage Sense" is disabled, then this policy does not have any effect.
# 
# Enabled:
# You must provide the desired Storage Sense cadence. Supported options are: daily, weekly, monthly, and during low free disk space. The default is 0 (during low free disk space).
# 
# Disabled or Not Configured:
# By default, the Storage Sense cadence is set to during low free disk space. Users can configure this setting in Storage settings.
#     
Configure Storage Sense cadence:
  lgpo.set:
  - name: SS_ConfigStorageSenseGlobalCadence
  - setting:
      StorageSenseGlobalCadence: enum-placeholder
  - policy_class: Machine
