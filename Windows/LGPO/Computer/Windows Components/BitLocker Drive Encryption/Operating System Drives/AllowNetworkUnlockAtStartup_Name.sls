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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\AllowNetworkUnlockAtStartup_Name.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Windows8NoARM
#
# This policy setting controls whether a BitLocker-protected computer that is connected to a trusted wired Local Area Network (LAN) and joined to a domain can create and use Network Key Protectors on TPM-enabled computers to automatically unlock the operating system drive when the computer is started.
# 
# If you enable this policy, clients configured with a BitLocker Network Unlock certificate will be able to create and use Network Key Protectors.
# 
# To use a Network Key Protector to unlock the computer, both the computer and the BitLocker Drive Encryption Network Unlock server must be provisioned with a Network Unlock certificate. The Network Unlock certificate is used to create Network Key Protectors, and protects the information exchanged with the server to unlock the computer. You can use the group policy setting "Computer Configuration\Windows Settings\Security Settings\Public Key Policies\BitLocker Drive Encryption Network Unlock Certificate" on the domain controller to distribute this certificate to computers in your organization. This unlock method uses the TPM on the computer, so computers that do not have a TPM cannot create Network Key Protectors to automatically unlock with Network Unlock.
# 
# If you disable or do not configure this policy setting, BitLocker clients will not be able to create and use Network Key Protectors.
# 
# Note: For reliability and security, computers should also have a TPM startup PIN that can be used when the computer is disconnected from the wired network or the server at startup.
# 
# 
Allow network unlock at startup:
  lgpo.set:
  - name: AllowNetworkUnlockAtStartup_Name
  - setting: Enabled
  - policy_class: Machine
