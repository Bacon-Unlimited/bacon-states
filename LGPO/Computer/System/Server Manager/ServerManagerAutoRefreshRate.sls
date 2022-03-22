# server:SUPPORTED_WindowsServer2008
#
# This policy setting allows you to set the refresh interval for Server Manager. Each refresh provides Server Manager with updated information about which roles and features are installed on servers that you are managing by using Server Manager. Server Manager also monitors the status of roles and features installed on managed servers.
# 
# If you enable this policy setting, Server Manager uses the refresh interval specified in the policy setting instead of the “Configure Refresh Interval” setting (in Windows Server 2008 and Windows Server 2008 R2), or the “Refresh the data shown in Server Manager every [x] [minutes/hours/days]” setting (in Windows Server 2012) that is configured in the Server Manager console.
# 
# If you disable this policy setting, Server Manager does not refresh automatically. If you do not configure this policy setting, Server Manager uses the refresh interval settings that are specified in the Server Manager console.
# 
# Note: The default refresh interval for Server Manager is two minutes in Windows Server 2008 and Windows Server 2008 R2, or 10 minutes in Windows Server 2012.
# 
Configure the refresh interval for Server Manager:
  lgpo.set:
  - name: ServerManagerAutoRefreshRate
  - setting:
      RefreshRate: decimal-placeholder
  - policy_class: Machine
