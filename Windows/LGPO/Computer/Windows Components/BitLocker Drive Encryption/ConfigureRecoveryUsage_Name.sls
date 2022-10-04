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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\ConfigureRecoveryUsage_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# This policy setting allows you to control whether the BitLocker Drive Encryption setup wizard can display and specify BitLocker recovery options. This policy is only applicable to computers running Windows Server 2008 or Windows Vista. This policy setting is applied when you turn on BitLocker.
# 
# Two recovery options can be used to unlock BitLocker-encrypted data in the absence of the required startup key information. The user either can type a 48-digit numerical recovery password or insert a USB flash drive containing a 256-bit recovery key.
# 
# If you enable this policy setting, you can configure the options that the setup wizard displays to users for recovering BitLocker encrypted data. Saving to a USB flash drive will store the 48-digit recovery password as a text file and the 256-bit recovery key as a hidden file. Saving to a folder will store the 48-digit recovery password as a text file. Printing will send the 48-digit recovery password to the default printer. For example, not allowing the 48-digit recovery password will prevent users from being able to print or save recovery information to a folder.
# 
# If you disable or do not configure this policy setting, the BitLocker setup wizard will present users with ways to store recovery options.
# 
# Note: If Trusted Platform Module (TPM) initialization is needed during the BitLocker setup, TPM owner information will be saved or printed with the BitLocker recovery information.
# 
# Note: The 48-digit recovery password will not be available in FIPS-compliance mode.
# 
# Important: This policy setting provides an administrative method of recovering data encrypted by BitLocker to prevent data loss due to lack of key information. If you do not allow both user recovery options you must enable the "Store BitLocker recovery information in Active Directory Domain Services (Windows Server 2008 and Windows Vista)" policy setting to prevent a policy error.
# 
#       
Choose how users can recover BitLocker-protected drives (Windows Server 2008 and Windows Vista):
  lgpo.set:
  - name: ConfigureRecoveryUsage_Name
  - setting:
      ConfigureRecoveryKeyUsageDropDown_Name: enum-placeholder
      ConfigureRecoveryPasswordUsageDropDown_Name: enum-placeholder
  - policy_class: Machine
