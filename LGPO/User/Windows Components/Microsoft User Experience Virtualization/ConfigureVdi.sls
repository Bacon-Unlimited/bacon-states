# windows:SUPPORTED_Windows7
#
# This policy setting configures the synchronization of User Experience Virtualization (UE-V) rollback information for computers running in a non-persistent, pooled VDI environment. UE-V settings rollback data and checkpoints are normally stored only on the local computer. With this policy setting enabled, the rollback information is copied to the settings storage location when the user logs off or shuts down their VDI session. Enable this setting to register a VDI-specific settings location template and restore data on computers in pooled VDI environments that reset to a clean state on logout. With this policy enabled you can roll settings back to the state when UE-V was installed or to “last-known-good” configurations. Only enable this policy setting on computers running in a non-persistent VDI environment. The VDI Collection Name defines the name of the virtual desktop collection containing the virtual computers. 
# If you enable this policy setting, the UE-V rollback state is copied to the settings storage location on logout and restored on login.
# If you disable this policy setting, no UE-V rollback state is copied to the settings storage location.
# If you do not configure this policy, no UE-V rollback state is copied to the settings storage location.
#       
VDI Configuration:
  lgpo.set:
  - name: ConfigureVdi
  - setting:
      VdiCollectionName: text-placeholder
  - policy_class: User
