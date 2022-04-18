# windows:SUPPORTED_WindowsVista
#
# This policy sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on an unmanaged network (when the computer is not able to reach a domain controller, e.g. a domain-joined laptop on a home network.)
# 
# If this setting is disabled, the network scan page will not be displayed.
# 
# If this setting is not configured, the Add Printer wizard will display the default number of printers of each type:
# TCP/IP printers: 50
# Web Services printers: 50
# Bluetooth printers: 10
# Shared printers: 50
# 
# If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.
# 
# In Windows 10 and later, only TCP/IP printers can be shown in the wizard. If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or do not configure this policy setting, the default limit is applied.
#           
# In Windows 8 and later, Bluetooth printers are not shown so its limit does not apply to those versions of Windows.
Add Printer wizard - Network scan page (Unmanaged network):
  lgpo.set:
  - name: NonDomainPrinters
  - setting:
      Bluetoothprinters: decimal-placeholder
      IPprinters: decimal-placeholder
      Shareprinters: decimal-placeholder
      WSDprinters: decimal-placeholder
  - policy_class: Machine
