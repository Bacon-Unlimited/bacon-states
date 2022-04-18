# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to specify the default path that is displayed when the BitLocker Drive Encryption setup wizard prompts the user to enter the location of a folder in which to save the recovery password. This policy setting is applied when you turn on BitLocker.
# 
# If you enable this policy setting, you can specify the path that will be used as the default folder location when the user chooses the option to save the recovery password in a folder. You can specify either a fully qualified path or include the target computer's environment variables in the path. If the path is not valid, the BitLocker setup wizard will display the computer's top-level folder view.
# 
# If you disable or do not configure this policy setting, the BitLocker setup wizard will display the computer's top-level folder view when the user chooses the option to save the recovery password in a folder.
# 
# Note: This policy setting does not prevent the user from saving the recovery password in another folder.
# 
# 
Choose default folder for recovery password:
  lgpo.set:
  - name: ConfigureRecoveryFolder_Name
  - setting:
      ConfigureRecoveryFolderPath_Input: text-placeholder
  - policy_class: Machine
