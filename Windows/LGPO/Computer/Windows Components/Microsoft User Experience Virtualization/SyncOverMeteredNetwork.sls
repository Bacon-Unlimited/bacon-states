# windows:SUPPORTED_Windows8
#
# This policy setting defines whether the User Experience Virtualization (UE-V) Agent synchronizes settings over metered connections.
# By default, the UE-V Agent does not synchronize settings over a metered connection.
# With this setting enabled, the UE-V Agent synchronizes settings over a metered connection.
# With this setting disabled, the UE-V Agent does not synchronize settings over a metered connection.
# If you do not configure this policy setting, any defined values are deleted.
#       
Sync settings over metered connections:
  lgpo.set:
  - name: SyncOverMeteredNetwork
  - setting: Enabled
  - policy_class: Machine
