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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Fixed Data Drives\FDVPassphrase_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7
#
# This policy setting specifies whether a password is required to unlock BitLocker-protected fixed data drives. If you choose to permit the use of a password, you can require that a password be used, enforce complexity requirements on the password, and configure a minimum length for the password. For the complexity requirement setting to be effective the Group Policy setting "Password must meet complexity requirements" located in Computer Configuration\Windows Settings\Security Settings\Account Policies\Password Policy\ must be also enabled.
# 
# Note: These settings are enforced when turning on BitLocker, not when unlocking a volume. BitLocker will allow unlocking a drive with any of the protectors available on the drive.
# 
# If you enable this policy setting, users can configure a password that meets the requirements you define. To require the use of a password, select "Require password for fixed data drive". To enforce complexity requirements on the password, select "Require complexity".
# 
# When set to "Require complexity" a connection to a domain controller is necessary when BitLocker is enabled to validate the complexity the password. When set to "Allow complexity" a connection to a domain controller will be attempted to validate the complexity adheres to the rules set by the policy, but if no domain controllers are found the password will still be accepted regardless of actual password complexity and the drive will be encrypted using that password as a protector. When set to "Do not allow complexity", no password complexity validation will be done.
# 
# Passwords must be at least 8 characters. To configure a greater minimum length for the password, enter the desired number of characters in the "Minimum password length" box.
# 
# If you disable this policy setting, the user is not allowed to use a password.
# 
# If you do not configure this policy setting, passwords will be supported with the default settings, which do not include password complexity requirements and require only 8 characters.
# 
# Note: Passwords cannot be used if FIPS-compliance is enabled. The "System cryptography: Use FIPS-compliant algorithms for encryption, hashing, and signing" policy setting in Computer Configuration\Windows Settings\Security Settings\Local Policies\Security Options specifies whether FIPS-compliance is enabled.
# 
# 
Configure use of passwords for fixed data drives:
  lgpo.set:
  - name: FDVPassphrase_Name
  - setting:
      FDVMinPassphraseLength: decimal-placeholder
      FDVPassphraseComplexity: enum-placeholder
      FDVRequirePassphrase: boolean-placeholder
  - policy_class: Machine
