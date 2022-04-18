# windows:SUPPORTED_Windows7
#
# This policy setting determines whether BitLocker protection is required for fixed data drives to be writable on a computer.
# 
# If you enable this policy setting, all fixed data drives that are not BitLocker-protected will be mounted as read-only. If the drive is protected by BitLocker, it will be mounted with read and write access.
# 
# If you disable or do not configure this policy setting, all fixed data drives on the computer will be mounted with read and write access.
# 
#       
Deny write access to fixed drives not protected by BitLocker:
  lgpo.set:
  - name: FDVDenyWriteAccess_Name
  - setting: Enabled
  - policy_class: Machine
