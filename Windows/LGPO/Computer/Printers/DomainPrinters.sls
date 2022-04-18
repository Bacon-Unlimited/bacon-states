# windows:SUPPORTED_WindowsVista
#
# If you enable this policy setting, it sets the maximum number of printers (of each type) that the Add Printer wizard will display on a computer on a managed network (when the computer is able to reach a domain controller, e.g. a domain-joined laptop on a corporate network.)
# 
#           If this policy setting is disabled, the network scan page will not be displayed.
# 
#           If this policy setting is not configured, the Add Printer wizard will display the default number of printers of each type:
#           Directory printers: 20
#           TCP/IP printers: 0
#           Web Services printers: 0
#           Bluetooth printers: 10
#           Shared printers: 0
# 
#           In order to view available Web Services printers on your network, ensure that network discovery is turned on. To turn on network discovery, click "Start", click "Control Panel", and then click "Network and Internet". On the "Network and Internet" page, click "Network and Sharing Center". On the Network and Sharing Center page, click "Change advanced sharing settings". On the Advanced sharing settings page, click the arrow next to "Domain" arrow, click "turn on network discovery", and then click "Save changes".
# 
#           If you would like to not display printers of a certain type, enable this policy and set the number of printers to display to 0.
# 
#           In Windows 10 and later, only TCP/IP printers can be shown in the wizard. If you enable this policy setting, only TCP/IP printer limits are applicable. On Windows 10 only, if you disable or do not configure this policy setting, the default limit is applied.
#           
#           In Windows 8 and later, Bluetooth printers are not shown so its limit does not apply to those versions of Windows.
#       
Add Printer wizard - Network scan page (Managed network):
  lgpo.set:
  - name: DomainPrinters
  - setting:
      ADprinters: decimal-placeholder
      Bluetoothprinters: decimal-placeholder
      IPprinters: decimal-placeholder
      Shareprinters: decimal-placeholder
      WSDprinters: decimal-placeholder
  - policy_class: Machine
