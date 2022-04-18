# windows:SUPPORTED_WindowsXP
#
# Allows you to have File Explorer display a confirmation dialog  whenever a file is deleted or moved to the Recycle Bin.
# 
# If you enable this setting, a confirmation dialog is displayed when a file is deleted or moved to the Recycle Bin by the user.
# 
# If you disable or do not configure this setting, the default behavior of not displaying a confirmation dialog occurs.
Display confirmation dialog when deleting files:
  lgpo.set:
  - name: ConfirmFileDelete
  - setting: Enabled
  - policy_class: User
