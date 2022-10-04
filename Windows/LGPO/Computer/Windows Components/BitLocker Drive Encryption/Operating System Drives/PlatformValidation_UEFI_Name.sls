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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\PlatformValidation_UEFI_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.
# 
# Important: This group policy only applies to computers with a native UEFI firmware configuration. Computers with BIOS or UEFI firmware with a Compatibility Service Module (CSM) enabled store different values into the Platform Configuration Registers (PCRs). Use the "Configure TPM platform validation profile for BIOS-based firmware configurations" group policy setting to configure the TPM PCR profile for computers with BIOS configurations or computers with UEFI firmware with a CSM enabled.
# 
# If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM will validate before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM will not release the encryption key to unlock the drive and the computer will instead display the BitLocker Recovery console and require that either the recovery password or recovery key be provided to unlock the drive.
# 
# If you disable or do not configure this policy setting, BitLocker uses the default platform validation profile for the available hardware or the platform validation profile specified by the setup script. A platform validation profile consists of a set of Platform Configuration Register (PCR) indices ranging from 0 to 23. 
# 
# On PCs that lack Secure Boot State (PCR 7) support, the default platform validation profile secures the encryption key against changes to the core system firmware executable code (PCR 0), extended or pluggable executable code (PCR 2), boot manager (PCR 4), and the BitLocker access control (PCR 11).
# 
# When Secure Boot State (PCR7) support is available, the default platform validation profile secures the encryption key using Secure Boot State (PCR 7) and the BitLocker access control (PCR 11). 
# 
# Warning: Changing from the default platform validation profile affects the security and manageability of your computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending upon inclusion or exclusion (respectively) of the PCRs. Specifically, setting this policy with PCR 7 omitted, will override the "Allow Secure Boot for integrity validation" group policy, preventing BitLocker from using Secure Boot for platform or Boot Configuration Data (BCD) integrity validation. Setting this policy may result in BitLocker recovery when firmware is updated. If you set this policy to include PCR 0, suspend BitLocker prior to applying firmware updates.
# 
# It is recommended to not configure this policy, to allow Windows to select the PCR profile for the best combination of security and usability based on the available hardware on each PC.
#       
Configure TPM platform validation profile for native UEFI firmware configurations:
  lgpo.set:
  - name: PlatformValidation_UEFI_Name
  - setting:
      PlatformValidation_UEFI_Setting0: boolean-placeholder
      PlatformValidation_UEFI_Setting1: boolean-placeholder
      PlatformValidation_UEFI_Setting10: boolean-placeholder
      PlatformValidation_UEFI_Setting11: boolean-placeholder
      PlatformValidation_UEFI_Setting12: boolean-placeholder
      PlatformValidation_UEFI_Setting13: boolean-placeholder
      PlatformValidation_UEFI_Setting14: boolean-placeholder
      PlatformValidation_UEFI_Setting15: boolean-placeholder
      PlatformValidation_UEFI_Setting16: boolean-placeholder
      PlatformValidation_UEFI_Setting17: boolean-placeholder
      PlatformValidation_UEFI_Setting18: boolean-placeholder
      PlatformValidation_UEFI_Setting19: boolean-placeholder
      PlatformValidation_UEFI_Setting2: boolean-placeholder
      PlatformValidation_UEFI_Setting20: boolean-placeholder
      PlatformValidation_UEFI_Setting21: boolean-placeholder
      PlatformValidation_UEFI_Setting22: boolean-placeholder
      PlatformValidation_UEFI_Setting23: boolean-placeholder
      PlatformValidation_UEFI_Setting3: boolean-placeholder
      PlatformValidation_UEFI_Setting4: boolean-placeholder
      PlatformValidation_UEFI_Setting5: boolean-placeholder
      PlatformValidation_UEFI_Setting6: boolean-placeholder
      PlatformValidation_UEFI_Setting7: boolean-placeholder
      PlatformValidation_UEFI_Setting8: boolean-placeholder
      PlatformValidation_UEFI_Setting9: boolean-placeholder
  - policy_class: Machine
