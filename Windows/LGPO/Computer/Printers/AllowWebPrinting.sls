# windows:SUPPORTED_Win2kOnly
#
# Internet printing lets you display printers on Web pages so that printers can be viewed, managed, and used across the Internet or an intranet.
# 
#           If you enable this policy setting, Internet printing is activated on this server.
# 
#           If you disable this policy setting or do not configure it, Internet printing is not activated.
# 
#           Internet printing is an extension of Internet Information Services (IIS). To use Internet printing, IIS must be installed, and printing support and this setting must be enabled.
# 
#           Note: This setting affects the server side of Internet printing only. It does not prevent the print client on the computer from printing across the Internet.
# 
#           Also, see the "Custom support URL in the Printers folder's left pane" setting in this folder and the "Browse a common Web site to find printers" setting in User Configuration\Administrative Templates\Control Panel\Printers.
Activate Internet printing:
  lgpo.set:
  - name: AllowWebPrinting
  - setting: Enabled
  - policy_class: Machine
