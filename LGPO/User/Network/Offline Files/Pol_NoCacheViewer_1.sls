# windows:SUPPORTED_WindowsPreVista
#
# Disables the Offline Files folder.
# 
# This setting disables the "View Files" button on the Offline Files tab. As a result, users cannot use the Offline Files folder to view or open copies of network files stored on their computer. Also, they cannot use the folder to view characteristics of offline files, such as their server status, type, or location.
# 
# This setting does not prevent users from working offline or from saving local copies of files available offline. Also, it does not prevent them from using other programs, such as Windows Explorer, to view their offline files.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To view the Offline Files Folder, in Windows Explorer, on the Tools menu, click Folder Options, click the Offline Files tab, and then click "View Files."
Prevent use of Offline Files folder:
  lgpo.set:
  - name: Pol_NoCacheViewer_1
  - setting: Enabled
  - policy_class: User
