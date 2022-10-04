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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\PlatformValidation_Deprecated_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# This policy setting allows you to configure how the computer's Trusted Platform Module (TPM) security hardware secures the BitLocker encryption key. This policy setting does not apply if the computer does not have a compatible TPM or if BitLocker has already been turned on with TPM protection.
# 
# If you enable this policy setting before turning on BitLocker, you can configure the boot components that the TPM will validate before unlocking access to the BitLocker-encrypted operating system drive. If any of these components change while BitLocker protection is in effect, the TPM will not release the encryption key to unlock the drive and the computer will instead display the BitLocker Recovery console and require that either the recovery password or recovery key be provided to unlock the drive.
# 
# If you disable or do not configure this policy setting, the TPM uses the default platform validation profile or the platform validation profile specified by the setup script. A platform validation profile consists of a set of Platform Configuration Register (PCR) indices ranging from 0 to 23, The default platform validation profile secures the encryption key against changes to the Core Root of Trust of Measurement (CRTM), BIOS, and Platform Extensions (PCR 0), the Option ROM Code (PCR 2), the Master Boot Record (MBR) Code (PCR 4), the NTFS Boot Sector (PCR 8), the NTFS Boot Block (PCR 9), the Boot Manager (PCR 10), and the BitLocker Access Control (PCR 11). The descriptions of PCR settings for computers that use an Extensible Firmware Interface (EFI) are different than the PCR settings described for computers that use a standard BIOS.
# 
# Warning: Changing from the default platform validation profile affects the security and manageability of your computer. BitLocker's sensitivity to platform modifications (malicious or authorized) is increased or decreased depending upon inclusion or exclusion (respectively) of the PCRs.
#       
Configure TPM platform validation profile (Windows Vista, Windows Server 2008, Windows 7, Windows Server 2008 R2):
  lgpo.set:
  - name: PlatformValidation_Deprecated_Name
  - setting:
      PlatformValidation_Deprecated_Setting0: boolean-placeholder
      PlatformValidation_Deprecated_Setting1: boolean-placeholder
      PlatformValidation_Deprecated_Setting10: boolean-placeholder
      PlatformValidation_Deprecated_Setting11: boolean-placeholder
      PlatformValidation_Deprecated_Setting12: boolean-placeholder
      PlatformValidation_Deprecated_Setting13: boolean-placeholder
      PlatformValidation_Deprecated_Setting14: boolean-placeholder
      PlatformValidation_Deprecated_Setting15: boolean-placeholder
      PlatformValidation_Deprecated_Setting16: boolean-placeholder
      PlatformValidation_Deprecated_Setting17: boolean-placeholder
      PlatformValidation_Deprecated_Setting18: boolean-placeholder
      PlatformValidation_Deprecated_Setting19: boolean-placeholder
      PlatformValidation_Deprecated_Setting2: boolean-placeholder
      PlatformValidation_Deprecated_Setting20: boolean-placeholder
      PlatformValidation_Deprecated_Setting21: boolean-placeholder
      PlatformValidation_Deprecated_Setting22: boolean-placeholder
      PlatformValidation_Deprecated_Setting23: boolean-placeholder
      PlatformValidation_Deprecated_Setting3: boolean-placeholder
      PlatformValidation_Deprecated_Setting4: boolean-placeholder
      PlatformValidation_Deprecated_Setting5: boolean-placeholder
      PlatformValidation_Deprecated_Setting6: boolean-placeholder
      PlatformValidation_Deprecated_Setting7: boolean-placeholder
      PlatformValidation_Deprecated_Setting8: boolean-placeholder
      PlatformValidation_Deprecated_Setting9: boolean-placeholder
  - policy_class: Machine
