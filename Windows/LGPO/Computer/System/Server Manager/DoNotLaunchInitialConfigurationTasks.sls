# SUPPORTED_WindowsServer2008OrWindowsServer2008R2Only
#
# This policy setting allows you to turn off the automatic display of the Initial Configuration Tasks window at logon on Windows Server 2008 and Windows Server 2008 R2. 
# 
# If you enable this policy setting, the Initial Configuration Tasks window is not displayed when an administrator logs on to the server. 
# 
# If you disable this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server.
# 
# If you do not configure this policy setting, the Initial Configuration Tasks window is displayed when an administrator logs on to the server. However, if an administrator selects the "Do not show this window at logon" option, the window is not displayed on subsequent logons.
# 
Do not display Initial Configuration Tasks window automatically at logon:
  lgpo.set:
  - name: DoNotLaunchInitialConfigurationTasks
  - setting: Enabled
  - policy_class: Machine
