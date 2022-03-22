# windows:SUPPORTED_Windows_6_3only
#
# This policy setting lets you prevent apps and features from working with files on OneDrive for Windows 8.1.
# If you enable this policy setting:
# 
# * Users can’t access OneDrive from the OneDrive app and file picker.
# * Windows Store apps can’t access OneDrive using the WinRT API.
# * OneDrive doesn’t appear in the navigation pane in File Explorer.
# * OneDrive files aren’t kept in sync with the cloud.
# * Users can’t automatically upload photos and videos from the camera roll folder.
# 
# If you disable or do not configure this policy setting, apps and features can work with OneDrive file storage.
Prevent the usage of OneDrive for file storage on Windows 8.1:
  lgpo.set:
  - name: PreventOnedriveFileSyncForBlue
  - setting: Enabled
  - policy_class: Machine