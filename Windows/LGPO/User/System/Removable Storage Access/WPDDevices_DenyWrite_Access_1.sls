# windows:SUPPORTED_WindowsVista
#
# This policy setting denies write access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.
# 
# If you enable this policy setting, write access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, write access is allowed to this removable storage class.
'WPD Devices: Deny write access':
  lgpo.set:
  - name: WPDDevices_DenyWrite_Access_1
  - setting: Enabled
  - policy_class: User
