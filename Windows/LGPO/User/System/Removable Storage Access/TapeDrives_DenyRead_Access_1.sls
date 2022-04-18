# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to the Tape Drive removable storage class.
# 
# If you enable this policy setting, read access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, read access is allowed to this removable storage class.
'Tape Drives: Deny read access':
  lgpo.set:
  - name: TapeDrives_DenyRead_Access_1
  - setting: Enabled
  - policy_class: User
