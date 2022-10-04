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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\ConfigureStartupUsage_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# This policy setting allows you to control whether the BitLocker Drive Encryption setup wizard will be able to set up an additional authentication method that is required each time the computer starts. This policy setting is applied when you turn on BitLocker.
# 
# Note:  This policy is only applicable to computers running Windows Server 2008 or Windows Vista.
# 
# On a computer with a compatible Trusted Platform Module (TPM), two authentication methods can be used at startup to provide added protection for encrypted data. When the computer starts, it can require users to insert a USB flash drive containing a startup key. It can also require users to enter a 4-digit to 20-digit startup personal identification number (PIN).
# 
# A USB flash drive containing a startup key is needed on computers without a compatible TPM. Without a TPM, BitLocker-encrypted data is protected solely by the key material on this USB flash drive.
# 
# If you enable this policy setting, the wizard will display the page to allow the user to configure advanced startup options for BitLocker. You can further configure setting options for computers with and without a TPM.
# 
# If you disable or do not configure this policy setting, the BitLocker setup wizard will display basic steps that allow users to turn on BitLocker on computers with a TPM. In this basic wizard, no additional startup key or startup PIN can be configured.
# 
Require additional authentication at startup (Windows Server 2008 and Windows Vista):
  lgpo.set:
  - name: ConfigureStartupUsage_Name
  - setting:
      ConfigureNonTPMStartupKeyUsage_Name: boolean-placeholder
      ConfigurePINUsageDropDown_Name: enum-placeholder
      ConfigureTPMStartupKeyUsageDropDown_Name: enum-placeholder
  - policy_class: Machine
