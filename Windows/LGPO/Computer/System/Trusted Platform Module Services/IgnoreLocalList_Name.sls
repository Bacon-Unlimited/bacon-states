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
