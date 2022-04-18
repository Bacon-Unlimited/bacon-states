# windows:SUPPORTED_Windows7
#
# This policy setting allows you to control how BitLocker-protected removable data drives are recovered in the absence of the required credentials. This policy setting is applied when you turn on BitLocker.
# 
# The "Allow data recovery agent" check box is used to specify whether a data recovery agent can be used with BitLocker-protected removable data drives. Before a data recovery agent can be used it must be added from the Public Key Policies item in either the Group Policy Management Console or the Local Group Policy Editor. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about adding data recovery agents.
# 
# In "Configure user storage of BitLocker recovery information" select whether users are allowed, required, or not allowed to generate a 48-digit recovery password or a 256-bit recovery key.
# 
# Select "Omit recovery options from the BitLocker setup wizard" to prevent users from specifying recovery options when they turn on BitLocker on a drive. This means that you will not be able to specify which recovery option to use when you turn on BitLocker, instead BitLocker recovery options for the drive are determined by the policy setting.
# 
# In "Save BitLocker recovery information to Active Directory Domain Services" choose which BitLocker recovery information to store in AD DS for removable data drives. If you select "Backup recovery password and key package", both the BitLocker recovery password and key package are stored in AD DS. If you select "Backup recovery password only" only the recovery password is stored in AD DS.
# 
# Select the "Do not enable BitLocker until recovery information is stored in AD DS for removable data drives" check box if you want to prevent users from enabling BitLocker unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds.
# 
# Note: If the "Do not enable BitLocker until recovery information is stored in AD DS for fixed data drives" check box is selected, a recovery password is automatically generated.
# 
# If you enable this policy setting, you can control the methods available to users to recover data from BitLocker-protected removable data drives.
# 
# If this policy setting is not configured or disabled, the default recovery options are supported for BitLocker recovery. By default a DRA is allowed, the recovery options can be specified by the user including the recovery password and recovery key, and recovery information is not backed up to AD DS
#       
Choose how BitLocker-protected removable drives can be recovered:
  lgpo.set:
  - name: RDVRecoveryUsage_Name
  - setting:
      RDVActiveDirectoryBackupDropDown_Name: enum-placeholder
      RDVActiveDirectoryBackup_Name: boolean-placeholder
      RDVAllowDRA_Name: boolean-placeholder
      RDVHideRecoveryPage_Name: boolean-placeholder
      RDVRecoveryKeyUsageDropDown_Name: enum-placeholder
      RDVRecoveryPasswordUsageDropDown_Name: enum-placeholder
      RDVRequireActiveDirectoryBackup_Name: boolean-placeholder
  - policy_class: Machine
