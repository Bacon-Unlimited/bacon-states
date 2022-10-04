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
# LOCATION: \Computer\System\Trusted Platform Module Services\BlockedCommandsList_Name.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to manage the Group Policy list of Trusted Platform Module (TPM) commands blocked by Windows.
# 
# If you enable this policy setting, Windows will block the specified commands from being sent to the TPM on the computer. TPM commands are referenced by a command number. For example, command number 129 is TPM_OwnerReadInternalPub, and command number 170 is TPM_FieldUpgrade. To find the command number associated with each TPM command with TPM 1.2, run "tpm.msc" and navigate to the "Command Management" section.
# 
# If you disable or do not configure this policy setting, only those TPM commands specified through the default or local lists may be blocked by Windows. The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See related policy settings to enforce or ignore the default and local lists of blocked TPM commands.
Configure the list of blocked TPM commands:
  lgpo.set:
  - name: BlockedCommandsList_Name
  - setting:
      BlockedCommandsList_Ordinals2:
      - placeholder1
      - placeholder2
  - policy_class: Machine
