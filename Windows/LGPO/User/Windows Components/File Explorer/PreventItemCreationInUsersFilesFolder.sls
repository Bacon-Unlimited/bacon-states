# windows:SUPPORTED_WindowsVista
#
# This policy setting allows administrators to prevent users from adding new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# If you enable this policy setting, users will no longer be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# If you disable or do not configure this policy setting, users will be able to add new items such as files or folders to the root of their Users Files folder in File Explorer.
# 
# 
# Note: Enabling this policy setting does not prevent the user from being able to add new items such as files and folders to their actual file system profile folder at %userprofile%.
Prevent users from adding files to the root of their Users Files folder.:
  lgpo.set:
  - name: PreventItemCreationInUsersFilesFolder
  - setting: Enabled
  - policy_class: User
