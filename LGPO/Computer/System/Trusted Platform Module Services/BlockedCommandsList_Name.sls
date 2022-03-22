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
