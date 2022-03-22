# windows:SUPPORTED_Win2k
#
# Announces the presence of shared printers to print browse master servers for the domain.
# 
# On domains with Active Directory, shared printer resources are available in Active Directory and are not announced.
# 
# If you enable this setting, the print spooler announces shared printers to the print browse master servers.
# 
# If you disable this setting, shared printers are not announced to print browse master servers, even if Active Directory is not available.
# 
# If you do not configure this setting, shared printers are announced to browse master servers only when Active Directory is not available.
# 
# Note: A client license is used each time a client computer announces a printer to a print browse master on the domain.
Printer browsing:
  lgpo.set:
  - name: PrinterServerThread
  - setting: Enabled
  - policy_class: Machine
