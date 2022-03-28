# windows:SUPPORTED_Windows_10_0
#
# This policy setting allows you to configure the algorithm and cipher strength used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption method has no effect if the drive is already encrypted, or if encryption is in progress.
# 
# If you enable this policy setting you will be able to configure an encryption algorithm and key cipher strength for fixed data drives, operating system drives, and removable data drives individually. For fixed and operating system drives, we recommend that you use the XTS-AES algorithm. For removable drives, you should use AES-CBC 128-bit or AES-CBC 256-bit if the drive will be used in other devices that are not running Windows 10 (Version 1511).
# 
# If you disable or do not configure this policy setting, BitLocker will use AES with the same bit strength (128-bit or 256-bit) as the "Choose drive encryption method and cipher strength (Windows Vista, Windows Server 2008, Windows 7)" and "Choose drive encryption method and cipher strength" policy settings (in that order), if they are set. If none of the policies are set, BitLocker will use the default encryption method of XTS-AES 128-bit or the encryption method specified by the setup script.
# 
#       
Choose drive encryption method and cipher strength (Windows 10 [Version 1511] and later):
  lgpo.set:
  - name: EncryptionMethodWithXts_Name
  - setting:
      EncryptionMethodWithXtsFdvDropDown_Name: enum-placeholder
      EncryptionMethodWithXtsOsDropDown_Name: enum-placeholder
      EncryptionMethodWithXtsRdvDropDown_Name: enum-placeholder
  - policy_class: Machine
