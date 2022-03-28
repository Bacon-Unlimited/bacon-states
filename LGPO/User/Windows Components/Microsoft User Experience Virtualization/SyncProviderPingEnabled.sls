# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure the User Experience Virtualization (UE-V) sync provider to ping the settings storage path before attempting to sync settings. If the ping is successful then the sync provider attempts to synchronize the settings packages. If the ping is unsuccessful then the sync provider doesnt attempt the synchronization. 
# If you enable this policy setting, the sync provider pings the settings storage location before synchronizing settings packages.
# If you disable this policy setting, the sync provider doesnt ping the settings storage location before synchronizing settings packages. 
# If you do not configure this policy, any defined values will be deleted.
#       
Ping the settings storage location before sync:
  lgpo.set:
  - name: SyncProviderPingEnabled
  - setting: Enabled
  - policy_class: User
