# windows:SUPPORTED_Windows7
#
# This policy setting allows you to enable or disable User Experience Virtualization (UE-V). Only applies to Windows 10 or earlier.
Use User Experience Virtualization (UE-V):
  lgpo.set:
  - name: SyncEnabled
  - setting: Enabled
  - policy_class: User
