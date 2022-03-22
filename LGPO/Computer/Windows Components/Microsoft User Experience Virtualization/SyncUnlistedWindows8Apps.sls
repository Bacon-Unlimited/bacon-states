# windows:SUPPORTED_Windows8
#
# This policy setting defines the default settings sync behavior of the User Experience Virtualization (UE-V) Agent for Windows apps that are not explicitly listed in Windows App List.
# By default, the UE-V Agent only synchronizes settings of those Windows apps included in the Windows App List.
# With this setting enabled, the settings of all Windows apps not expressly disable in the Windows App List are synchronized.
# With this setting disabled, only the settings of the Windows apps set to synchronize in the Windows App List are synchronized.
# If you do not configure this policy setting, any defined values are deleted.
#       
Sync Unlisted Windows Apps:
  lgpo.set:
  - name: SyncUnlistedWindows8Apps
  - setting: Enabled
  - policy_class: Machine
