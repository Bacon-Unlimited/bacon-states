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
# LOCATION: \Computer\System\Trusted Platform Module Services\IgnoreLocalList_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to enforce or ignore the computer's local list of blocked Trusted Platform Module (TPM) commands.
# 
# If you enable this policy setting, Windows will ignore the computer's local list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the default list.
# 
# The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. The default list of blocked TPM commands is pre-configured by Windows. See the related policy setting to configure the Group Policy list of blocked TPM commands.
# 
# If you disable or do not configure this policy setting, Windows will block the TPM commands found in the local list, in addition to commands in the Group Policy and default lists of blocked TPM commands.
Ignore the local list of blocked TPM commands:
  lgpo.set:
  - name: IgnoreLocalList_Name
  - setting: Enabled
  - policy_class: Machine
