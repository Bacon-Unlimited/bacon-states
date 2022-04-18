# windows:SUPPORTED_Win2k
#
# 
#         This policy setting prevents users from searching for installation files when they add features or components to an installed program.
# 
#         If you enable this policy setting, the Browse button beside the "Use feature from" list in the Windows Installer dialog box is disabled. As a result, users must select an installation file source from the "Use features from" list that the system administrator configures.
# 
#         This policy setting applies even when the installation is running in the user's security context.
# 
#         If you disable or do not configure this policy setting, the Browse button is enabled when an installation is running in the user's security context. But only system administrators can browse when an installation is running with elevated system privileges, such as installations offered on the desktop or in Add or Remove Programs.
# 
#         This policy setting affects Windows Installer only. It does not prevent users from selecting other browsers, such as File Explorer or Network Locations, to search for installation files.
# 
#         Also, see the "Enable user to browse for source while elevated" policy setting.
Remove browse dialog box for new source:
  lgpo.set:
  - name: DisableBrowse
  - setting: Enabled
  - policy_class: Machine
