# windows:SUPPORTED_Win2k
#
# This policy setting allows you to prevent users from accessing Folder Options through the View tab on the ribbon in File Explorer.
# 
# Folder Options allows users to change the way files and folders open, what appears in the navigation pane, and other advanced view settings.
# 
# If you enable this policy setting, users will receive an error message if they tap or click the Options button or choose the Change folder and search options command, and they will not be able to open Folder Options.
# 
# If you disable or do not configure this policy setting, users can open Folder Options from the View tab on the ribbon.
Do not allow Folder Options to be opened from the Options button on the View tab of the ribbon:
  lgpo.set:
  - name: NoFolderOptions
  - setting: Enabled
  - policy_class: User
