# windows:SUPPORTED_WindowsVista
#
# This policy setting denies write access to the CD and DVD removable storage class.
# 
# If you enable this policy setting, write access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, write access is allowed to this removable storage class.
'CD and DVD: Deny write access':
  lgpo.set:
  - name: CDandDVD_DenyWrite_Access_1
  - setting: Enabled
  - policy_class: User
