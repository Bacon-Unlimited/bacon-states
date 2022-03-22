# windows:SUPPORTED_Windows7
#
# This policy setting controls the use of BitLocker on removable data drives. This policy setting is applied when you turn on BitLocker.
# 
# When this policy setting is enabled you can select property settings that control how users can configure BitLocker. Choose "Allow users to apply BitLocker protection on removable data drives" to permit the user to run the BitLocker setup wizard on a removable data drive. Choose "Allow users to suspend and decrypt BitLocker on removable data drives" to permit the user to remove BitLocker Drive encryption from the drive or suspend the encryption while maintenance is performed. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information on suspending BitLocker protection.
# 
# If you do not configure this policy setting, users can use BitLocker on removable disk drives.
# 
# If you disable this policy setting, users cannot use BitLocker on removable disk drives.
# 
#       
Control use of BitLocker on removable drives:
  lgpo.set:
  - name: RDVConfigureBDE
  - setting:
      RDVAllowBDE_Name: boolean-placeholder
      RDVDisableBDE_Name: boolean-placeholder
  - policy_class: Machine
