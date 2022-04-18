# windows:SUPPORTED_Windows8
#
# This policy setting specifies whether to use the Store service for finding an application to open a file with an unhandled file type or protocol association.
# 
# When a user opens a file type or protocol that is not associated with any applications on the computer, the user is given the choice to select a local application or use the Store service to find an application.
# 
# If you enable this policy setting, the "Look for an app in the Store" item in the Open With dialog is removed.
# 
# If you disable or do not configure this policy setting, the user is allowed to use the Store service and the Store item is available in the Open With dialog.
Turn off access to the Store:
  lgpo.set:
  - name: ShellNoUseStoreOpenWith_1
  - setting: Enabled
  - policy_class: User
