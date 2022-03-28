# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to turn off the automatic display of Server Manager at logon.
# 
# If you enable this policy setting, Server Manager is not displayed automatically when a user logs on to the server.
# 
# If you disable this policy setting, Server Manager is displayed automatically when a user logs on to the server.
# 
# If you do not configure this policy setting, Server Manager is displayed when a user logs on to the server. However, if the "Do not show me this console at logon" (Windows Server 2008 and Windows Server 2008 R2) or Do not start Server Manager automatically at logon (Windows Server 2012) option is selected, the console is not displayed automatically at logon.
# 
# Note: Regardless of the status of this policy setting, Server Manager is available from the Start menu or the Windows taskbar.
# 
Do not display Server Manager automatically at logon:
  lgpo.set:
  - name: DoNotLaunchServerManager
  - setting: Enabled
  - policy_class: Machine
