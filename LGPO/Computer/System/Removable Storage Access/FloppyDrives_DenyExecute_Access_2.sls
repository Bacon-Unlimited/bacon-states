# windows:SUPPORTED_Windows7
#
# This policy setting denies execute access to the Floppy Drives removable storage class, including USB Floppy Drives.
# 
# If you enable this policy setting, execute access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, execute access is allowed to this removable storage class.
'Floppy Drives: Deny execute access':
  lgpo.set:
  - name: FloppyDrives_DenyExecute_Access_2
  - setting: Enabled
  - policy_class: Machine
