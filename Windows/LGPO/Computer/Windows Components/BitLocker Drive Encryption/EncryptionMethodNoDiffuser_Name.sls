####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\EncryptionMethodNoDiffuser_Name.sls
#
# SUPPORTED WINDOWS OS
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
