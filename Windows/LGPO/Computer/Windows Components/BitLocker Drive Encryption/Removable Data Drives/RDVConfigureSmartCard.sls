# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify whether smart cards can be used to authenticate user access to BitLocker-protected removable data drives on a computer.
# 
# If you enable this policy setting smart cards can be used to authenticate user access to the drive. You can require a smart card authentication by selecting the "Require use of smart cards on removable data drives" check box.
# 
# Note:  These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker will allow unlocking a drive with any of the protectors available on the drive.
# 
# If you disable this policy setting, users are not allowed to use smart cards to authenticate their access to BitLocker-protected removable data drives.
# 
# If you do not configure this policy setting, smart cards are available to authenticate user access to a BitLocker-protected removable data drive.
# 
#       
Configure use of smart cards on removable data drives:
  lgpo.set:
  - name: RDVConfigureSmartCard
  - setting:
      RDVRequireSmartCard_Name: boolean-placeholder
  - policy_class: Machine
