# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to the CD and DVD removable storage class.
# 
# If you enable this policy setting, read access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, read access is allowed to this removable storage class.
'CD and DVD: Deny read access':
  lgpo.set:
  - name: CDandDVD_DenyRead_Access_2
  - setting: Enabled
  - policy_class: Machine
