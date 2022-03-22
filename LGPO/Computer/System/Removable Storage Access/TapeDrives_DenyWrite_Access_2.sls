# windows:SUPPORTED_WindowsVista
#
# This policy setting denies write access to the Tape Drive removable storage class.
# 
# If you enable this policy setting, write access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, write access is allowed to this removable storage class.
'Tape Drives: Deny write access':
  lgpo.set:
  - name: TapeDrives_DenyWrite_Access_2
  - setting: Enabled
  - policy_class: Machine
