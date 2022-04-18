# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted or if encryption is in progress. Consult the BitLocker Drive Encryption Deployment Guide on Microsoft TechNet for more information about the encryption methods available. This policy is only applicable to computers running Windows Server 2008, Windows Vista, Windows Server 2008 R2, or Windows 7.
# 
# If you enable this policy setting you will be able to choose an encryption algorithm and key cipher strength for BitLocker to use to encrypt drives.
# 
# If you disable or do not configure this policy setting, BitLocker will use the default encryption method of AES 128-bit with Diffuser or the encryption method specified by the setup script.
# 
#       
Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2):
  lgpo.set:
  - name: EncryptionMethod_Name
  - setting:
      EncryptionMethodDropDown_Name: enum-placeholder
  - policy_class: Machine
