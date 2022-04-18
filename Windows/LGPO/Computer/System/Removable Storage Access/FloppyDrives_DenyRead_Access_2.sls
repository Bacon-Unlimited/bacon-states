# windows:SUPPORTED_WindowsVista
#
# This policy setting denies read access to the Floppy Drives removable storage class, including USB Floppy Drives.
# 
# If you enable this policy setting, read access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, read access is allowed to this removable storage class.
'Floppy Drives: Deny read access':
  lgpo.set:
  - name: FloppyDrives_DenyRead_Access_2
  - setting: Enabled
  - policy_class: Machine
