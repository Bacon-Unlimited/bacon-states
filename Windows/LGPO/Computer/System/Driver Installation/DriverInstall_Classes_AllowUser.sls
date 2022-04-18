# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies a list of device setup class GUIDs describing driver packages that non-administrator members of the built-in Users group may install on the system.
# 
# If you enable this policy setting, members of the Users group may install new drivers for the specified device setup classes. The drivers must be signed according to Windows Driver Signing Policy, or be signed by publishers already in the TrustedPublisher store.
# 
# If you disable or do not configure this policy setting, only members of the Administrators group are allowed to install new driver packages on the system.
Allow non-administrators to install drivers for these device setup classes:
  lgpo.set:
  - name: DriverInstall_Classes_AllowUser
  - setting:
      DriverInstall_Classes_AllowUser_List:
      - placeholder1
      - placeholder2
  - policy_class: Machine
