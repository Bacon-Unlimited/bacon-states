# windows:SUPPORTED_Win2k
#
# Determines whether the computer's shared printers can be published in Active Directory.
# 
#             If you enable this setting or do not configure it, users can use the "List in directory" option in the Printer's Properties' Sharing tab to publish shared printers in Active Directory.
# 
#             If you disable this setting, this computer's shared printers cannot be published in Active Directory, and the "List in directory" option is not available.
# 
#             Note: This settings takes priority over the setting "Automatically publish new printers in the Active Directory".
Allow printers to be published:
  lgpo.set:
  - name: PublishPrinters
  - setting: Enabled
  - policy_class: Machine
