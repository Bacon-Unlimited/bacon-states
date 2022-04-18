# windows:SUPPORTED_Windows8
#
# This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings over metered connections outside of the home provider network, for example when connected via a roaming connection.
# By default, the UE-V Agent does not synchronize settings over a metered connection that is roaming.
# With this setting enabled, the UE-V Agent synchronizes settings over a metered connection that is roaming.
# With this setting disabled, the UE-V Agent will not synchronize settings over a metered connection that is roaming.
# If you do not configure this policy setting, any defined values are deleted.
#       
Sync settings over metered connections even when roaming:
  lgpo.set:
  - name: SyncOverMeteredNetworkWhenRoaming
  - setting: Enabled
  - policy_class: User
