# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to enforce or ignore the computer's default list of blocked Trusted Platform Module (TPM) commands.
# 
# If you enable this policy setting, Windows will ignore the computer's default list of blocked TPM commands and will only block those TPM commands specified by Group Policy or the local list.
# 
# The default list of blocked TPM commands is pre-configured by Windows. You can view the default list by running "tpm.msc", navigating to the "Command Management" section, and making visible the "On Default Block List" column. The local list of blocked TPM commands is configured outside of Group Policy by running "tpm.msc" or through scripting against the Win32_Tpm interface. See the related policy setting to configure the Group Policy list of blocked TPM commands.
# 
# If you disable or do not configure this policy setting, Windows will block the TPM commands in the default list, in addition to commands in the Group Policy and local lists of blocked TPM commands. 
Ignore the default list of blocked TPM commands:
  lgpo.set:
  - name: IgnoreDefaultList_Name
  - setting: Enabled
  - policy_class: Machine
