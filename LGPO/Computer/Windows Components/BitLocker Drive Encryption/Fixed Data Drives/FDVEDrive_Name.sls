# SUPPORTED_Windows8NoARM
#
# This policy setting allows you to manage BitLockers use of hardware-based encryption on fixed data drives and specify which encryption algorithms it can use with hardware-based encryption. Using hardware-based encryption can improve performance of drive operations that involve frequent reading or writing of data to the drive.
# 
# If you enable this policy setting, you can specify additional options that control whether BitLocker software-based encryption is used instead of hardware-based encryption on computers that do not support hardware-based encryption and whether you want to restrict the encryption algorithms and cipher suites used with hardware-based encryption.
# 
# If you disable this policy setting, BitLocker cannot use hardware-based encryption with operating system drives and BitLocker software-based encryption will be used by default when the drive is encrypted.
# 
# If you do not configure this policy setting, BitLocker will use software-based encryption irrespective of hardware-based encryption availability.
# 
# Note: The Choose drive encryption method and cipher strength policy setting does not apply to hardware-based encryption. The encryption algorithm used by hardware-based encryption is set when the drive is partitioned. By default, BitLocker uses the algorithm configured on the drive to encrypt the drive. The Restrict encryption algorithms and cipher suites allowed for hardware-based encryption option enables you to restrict the encryption algorithms that BitLocker can use with hardware encryption. If the algorithm set for the drive is not available, BitLocker will disable the use of hardware-based encryption.
# Encryption algorithms are specified by object identifiers (OID). For example:
# - AES 128 in CBC mode OID: 2.16.840.1.101.3.4.1.2
# - AES 256 in CBC mode OID: 2.16.840.1.101.3.4.1.42
#       
Configure use of hardware-based encryption for fixed data drives:
  lgpo.set:
  - name: FDVEDrive_Name
  - setting:
      FDVAllowedAlgos: text-placeholder
      FDVRestrictAlgos: boolean-placeholder
      FDVUseSW: boolean-placeholder
  - policy_class: Machine
