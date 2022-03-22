# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to removable disks, which may include media players, cellular phones, auxiliary displays, and CE devices.
# 
# If you enable this policy setting, read access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, read access is allowed to this removable storage class.
'WPD Devices: Deny read access':
  lgpo.set:
  - name: WPDDevices_DenyRead_Access_2
  - setting: Enabled
  - policy_class: Machine
