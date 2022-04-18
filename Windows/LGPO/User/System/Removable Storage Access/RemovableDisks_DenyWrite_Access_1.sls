# windows:SUPPORTED_WindowsVista
#
# This policy setting denies write access to removable disks.
# 
# If you enable this policy setting, write access is denied to this removable storage class.
# 
# If you disable or do not configure this policy setting, write access is allowed to this removable storage class.
# 
# Note: To require that users write data to BitLocker-protected storage, enable the policy setting "Deny write access to drives not protected by BitLocker," which is located in "Computer Configuration\Administrative Templates\Windows Components\BitLocker Drive Encryption\Removable Data Drives."
'Removable Disks: Deny write access':
  lgpo.set:
  - name: RemovableDisks_DenyWrite_Access_1
  - setting: Enabled
  - policy_class: User
