# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# This policy setting allows you to manage the Active Directory Domain Services (AD DS) backup of BitLocker Drive Encryption recovery information. This provides an administrative method of recovering data encrypted by BitLocker to prevent data loss due to lack of key information. This policy setting is only applicable to computers running Windows Server 2008 or Windows Vista.
# 
# If you enable this policy setting, BitLocker recovery information is automatically and silently backed up to AD DS when BitLocker is turned on for a computer. This policy setting is applied when you turn on BitLocker.
# 
# Note: You might need to set up appropriate schema extensions and access control settings on the domain before AD DS backup can succeed. More information about setting up AD DS backup for BitLocker is available on Microsoft TechNet.
# 
# BitLocker recovery information includes the recovery password and some unique identifier data. You can also include a package that contains a BitLocker-protected drive's encryption key. This key package is secured by one or more recovery passwords and may help perform specialized recovery when the disk is damaged or corrupted.
# 
# If you select the option to "Require BitLocker backup to AD DS" BitLocker cannot be turned on unless the computer is connected to the domain and the backup of BitLocker recovery information to AD DS succeeds. This option is selected by default to help ensure that BitLocker recovery is possible. If this option is not selected, AD DS backup is attempted but network or other backup failures do not prevent BitLocker setup. Backup is not automatically retried and the recovery password may not have been stored in AD DS during BitLocker setup.
# 
# If you disable or do not configure this policy setting, BitLocker recovery information is not backed up to AD DS.
# 
# Note: Trusted Platform Module (TPM) initialization might occur during BitLocker setup. Enable the "Turn on TPM backup to Active Directory Domain Services" policy setting in System\Trusted Platform Module Services to ensure that TPM information is also backed up.
#       
Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista):
  lgpo.set:
  - name: ActiveDirectoryBackup_Name
  - setting:
      ActiveDirectoryBackupDropDown_Name: enum-placeholder
      RequireActiveDirectoryBackup_Name: boolean-placeholder
  - policy_class: Machine
