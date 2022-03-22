# windows:SUPPORTED_WindowsVista
#
# This policy setting allows the administrator to define whether Folder Redirection should use localized names for the All Programs, Startup, My Music, My Pictures, and My Videos subfolders when redirecting the parent Start Menu and legacy My Documents folder respectively.
# 
# If you enable this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use localized folder names for these subfolders when redirecting the Start Menu or legacy My Documents folder.
# 
# If you disable or not configure this policy setting, Windows Vista, Windows 7, Windows 8, and Windows Server 2012 will use the standard English names for these subfolders when redirecting the Start Menu or legacy My Documents folder.
# 
# Note: This policy is valid only on Windows Vista, Windows 7, Windows 8, and Windows Server 2012 when it processes a legacy redirection policy already deployed for these folders in your existing localized environment.
Use localized subfolder names when redirecting Start Menu and My Documents:
  lgpo.set:
  - name: LocalizeXPRelativePaths_2
  - setting: Enabled
  - policy_class: Machine
