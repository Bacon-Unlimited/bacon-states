# windows:SUPPORTED_Windows7
#
# This policy setting allows you to specify whether smart cards can be used to authenticate user access to the BitLocker-protected fixed data drives on a computer.
# 
# If you enable this policy setting smart cards can be used to authenticate user access to the drive. You can require a smart card authentication by selecting the "Require use of smart cards on fixed data drives" check box.
# 
# Note:  These settings are enforced when turning on BitLocker, not when unlocking a drive. BitLocker will allow unlocking a drive with any of the protectors available on the drive.
# 
# If you disable this policy setting, users are not allowed to use smart cards to authenticate their access to BitLocker-protected fixed data drives.
# 
# If you do not configure this policy setting, smart cards can be used to authenticate user access to a BitLocker-protected drive.
# 
#       
Configure use of smart cards on fixed data drives:
  lgpo.set:
  - name: FDVConfigureSmartCard
  - setting:
      FDVRequireSmartCard_Name: boolean-placeholder
  - policy_class: Machine
