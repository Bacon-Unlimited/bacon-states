# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to removable disks.
# 
# If you enable this policy setting, read access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, read access is allowed to this removable storage class.
'Removable Disks: Deny read access':
  lgpo.set:
  - name: RemovableDisks_DenyRead_Access_2
  - setting: Enabled
  - policy_class: Machine
