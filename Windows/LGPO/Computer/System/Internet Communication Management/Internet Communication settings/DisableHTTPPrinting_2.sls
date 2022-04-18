# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting specifies whether to allow printing over HTTP from this client.
# 
# Printing over HTTP allows a client to print to printers on the intranet as well as the Internet.
# 
# Note: This policy setting affects the client side of Internet printing only. It does not prevent this computer from acting as an Internet Printing server and making its shared printers available via HTTP.
# 
# If you enable this policy setting, it prevents this client from printing to Internet printers over HTTP.
# 
# If you disable or do not configure this policy setting, users can choose to print to Internet printers over HTTP.
# 
# Also, see the "Web-based printing" policy setting in Computer Configuration/Administrative Templates/Printers.
Turn off printing over HTTP:
  lgpo.set:
  - name: DisableHTTPPrinting_2
  - setting: Enabled
  - policy_class: Machine
