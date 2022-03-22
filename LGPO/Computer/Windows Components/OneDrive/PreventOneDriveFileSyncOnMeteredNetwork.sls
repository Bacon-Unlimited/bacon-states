# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows configuration of OneDrive file sync behavior on metered connections.
Prevent OneDrive files from syncing over metered connections:
  lgpo.set:
  - name: PreventOneDriveFileSyncOnMeteredNetwork
  - setting:
      OneDriveMeteredNetwork_Dropdown: enum-placeholder
  - policy_class: Machine
