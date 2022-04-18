# windows:SUPPORTED_Windows7To2kAndWindows10
#
# Hides all folders on the user-specific (top) section of the Start menu. Other items appear, but folders are hidden.
# 
# This setting is designed for use with redirected folders. Redirected folders appear on the main (bottom) section of the Start menu. However, the original, user-specific version of the folder still appears on the top section of the Start menu. Because the appearance of two folders with the same name might confuse users, you can use this setting to hide user-specific folders.
# 
# Note that this setting hides all user-specific folders, not just those associated with redirected folders.
# 
# If you enable this setting, no folders appear on the top section of the Start menu. If users add folders to the Start Menu directory in their user profiles, the folders appear in the directory but not on the Start menu.
# 
# If you disable this setting or do not configured it, Windows 2000 Professional and Windows XP Professional display folders on both sections of the Start menu.
Remove user's folders from the Start Menu:
  lgpo.set:
  - name: NoStartMenuSubFolders
  - setting: Enabled
  - policy_class: User
