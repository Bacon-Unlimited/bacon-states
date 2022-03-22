# windows:SUPPORTED_Win2k
#
# Specifies the Active Directory location where searches for printers begin.
# 
#           The Add Printer Wizard gives users the option of searching Active Directory for a shared printer.
# 
#           If you enable this policy setting, these searches begin at the location you specify in the "Default Active Directory path" box. Otherwise, searches begin at the root of Active Directory.
# 
#           This setting only provides a starting point for Active Directory searches for printers. It does not restrict user searches through Active Directory.
Default Active Directory path when searching for printers:
  lgpo.set:
  - name: PrinterDirectorySearchScope
  - setting:
      PrinterDirectorySearchScope_Name: text-placeholder
  - policy_class: User
