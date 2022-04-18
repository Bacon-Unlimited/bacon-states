# windows:SUPPORTED_WindowsPreVista
#
# Determines whether the Add Printer Wizard automatically publishes the computer's shared printers in Active Directory.
# 
#       If you enable this setting or do not configure it, the Add Printer Wizard automatically publishes all shared printers.
# 
#       If you disable this setting, the Add Printer Wizard does not automatically publish printers. However, you can publish shared printers manually.
# 
#       The default behavior is to automatically publish shared printers in Active Directory.
# 
#       Note: This setting is ignored if the "Allow printers to be published" setting is disabled.
Automatically publish new printers in Active Directory:
  lgpo.set:
  - name: AutoPublishing
  - setting: Enabled
  - policy_class: Machine
