# SUPPORTED_Windows8NoARM
#
# This policy setting allows you to configure the encryption type used by BitLocker Drive Encryption. This policy setting is applied when you turn on BitLocker. Changing the encryption type has no effect if the drive is already encrypted or if encryption is in progress. Choose full encryption to require that the entire drive be encrypted when BitLocker is turned on. Choose used space only encryption to require that only the portion of the drive used to store data is encrypted when BitLocker is turned on.
# 
# If you enable this policy setting the encryption type that BitLocker will use to encrypt drives is defined by this policy and the encryption type option will not be presented in the BitLocker setup wizard.
# 
# If you disable or do not configure this policy setting, the BitLocker setup wizard will ask the user to select the encryption type before turning on BitLocker.
# 
#       
Enforce drive encryption type on fixed data drives:
  lgpo.set:
  - name: FDVEncryptionType_Name
  - setting:
      FDVEncryptionTypeDropDown_Name: enum-placeholder
  - policy_class: Machine
