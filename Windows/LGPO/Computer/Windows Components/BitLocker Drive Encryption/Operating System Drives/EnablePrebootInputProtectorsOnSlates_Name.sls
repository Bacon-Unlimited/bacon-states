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
# LOCATION: \Computer\Windows Components\BitLocker Drive Encryption\Operating System Drives\EnablePrebootInputProtectorsOnSlates_Name.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_Windows8NoARM
#
# This policy setting allows users to turn on authentication options that require user input from the pre-boot environment, even if the platform lacks pre-boot input capability.
# 
# The Windows touch keyboard (such as that used by tablets) isn't available in the pre-boot environment where BitLocker requires additional information such as a PIN or Password.
# 
# If you enable this policy setting, devices must have an alternative means of pre-boot input (such as an attached USB keyboard).
# 
# If this policy is not enabled, the Windows Recovery Environment must be enabled on tablets to support the entry of the BitLocker recovery password. When the Windows Recovery Environment is not enabled and this policy is not enabled, you cannot turn on BitLocker on a device that uses the Windows touch keyboard.
# 
# Note that if you do not enable this policy setting, options in the "Require additional authentication at startup" policy might not be available on such devices. These options include:
# - Configure TPM startup PIN: Required/Allowed
# - Configure TPM startup key and PIN: Required/Allowed
# - Configure use of passwords for operating system drives.
#       
Enable use of BitLocker authentication requiring preboot keyboard input on slates:
  lgpo.set:
  - name: EnablePrebootInputProtectorsOnSlates_Name
  - setting: Enabled
  - policy_class: Machine
