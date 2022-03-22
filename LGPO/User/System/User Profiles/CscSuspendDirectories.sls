# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify which network directories will be synchronized only at logon and logoff via Offline Files. This policy setting is meant to be used in conjunction with Folder Redirection, to help resolve issues with applications that do not work well with Offline Files while the user is online.
# 
# If you enable this policy setting, the network paths specified in this policy setting will be synchronized only by Offline Files during user logon and logoff, and will be taken offline while the user is logged on.
# 
# If you disable or do not configure this policy setting, the paths specified in this policy setting will behave like any other cached data via Offline Files and continue to remain online while the user is logged on, if the network paths are accessible.   
# 
# Note: You should not use this policy setting to suspend any of the root redirected folders such as Appdata\Roaming, Start Menu, and Documents. You should suspend only the subfolders of these parent folders.
Specify network directories to sync at logon/logoff time only:
  lgpo.set:
  - name: CscSuspendDirectories
  - setting:
      CscSuspendDirectories_Message: text-placeholder
  - policy_class: User
