# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted or if encryption is in progress. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about the encryption methods available. This policy is only applicable to computers running Windows 8 and later.
# 
# If you enable this policy setting you will be able to choose an encryption algorithm and key cipher strength for BitLocker to use to encrypt drives.
# 
# If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" policy setting, if it is set. If neither policy is set, BitLocker will use the default encryption method of AES 128-bit or the encryption method specified by the setup script.
# 
#       
? Choose drive encryption method and cipher strength (Windows 8, Windows Server 2012,
  Windows 8.1, Windows Server 2012 R2, Windows 10 [Version 1507])
: lgpo.set:
  - name: EncryptionMethodNoDiffuser_Name
  - setting:
      EncryptionMethodNoDiffDropDown_Name: enum-placeholder
  - policy_class: Machine
