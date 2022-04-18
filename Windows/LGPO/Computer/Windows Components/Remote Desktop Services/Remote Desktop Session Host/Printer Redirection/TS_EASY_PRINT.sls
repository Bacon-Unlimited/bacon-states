# TS_SUPPORTED_WindowsServer2008OrWin7
#
# This policy setting allows you to specify whether the Remote Desktop Easy Print printer driver is used first to install all client printers. 
# 
# If you enable or do not configure this policy setting, the RD Session Host server first tries to use the Remote Desktop Easy Print printer driver to install all client printers. If for any reason the Remote Desktop Easy Print printer driver cannot be used, a printer driver on the RD Session Host server that matches the client printer is used. If the RD Session Host server does not have a printer driver that matches the client printer, the client printer is not available for the Remote Desktop session.
# 
# If you disable this policy setting, the RD Session Host server tries to find a suitable printer driver to install the client printer. If the RD Session Host server does not have a printer driver that matches the client printer, the server tries to use the Remote Desktop Easy Print driver to install the client printer. If for any reason the Remote Desktop Easy Print printer driver cannot be used, the client printer is not available for the Remote Desktop Services session.
# 
# Note: If the "Do not allow client printer redirection" policy setting is enabled, the "Use Remote Desktop Easy Print printer driver first" policy setting is ignored.
Use Remote Desktop Easy Print printer driver first:
  lgpo.set:
  - name: TS_EASY_PRINT
  - setting: Enabled
  - policy_class: Machine
