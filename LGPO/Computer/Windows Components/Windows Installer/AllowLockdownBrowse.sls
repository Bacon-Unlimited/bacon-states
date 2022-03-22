# windows:SUPPORTED_Win2k
#
# This policy setting allows users to search for installation files during privileged installations.
# 
# If you enable this policy setting, the Browse button in the "Use feature from" dialog box is enabled. As a result, users can search for installation files even when the installation program is running with elevated system privileges.
# 
# Because the installation is running with elevated system privileges, users can browse through directories that their own permissions would not allow.
# 
# This policy setting does not affect installations that run in the user's security context. Also, see the "Remove browse dialog box for new source" policy setting.
# 
# If you disable or do not configure this policy setting, by default, only system administrators can browse during installations with elevated privileges, such as installations offered on the desktop or displayed in Add or Remove Programs.
Allow users to browse for source while elevated:
  lgpo.set:
  - name: AllowLockdownBrowse
  - setting: Enabled
  - policy_class: Machine
