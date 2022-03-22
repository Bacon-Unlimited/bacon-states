# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to manage a list of files and folders for which you want to block the "Make Available Offline" command.
# 
# If you enable this policy setting, the "Make Available Offline" command is not available for the files and folders that you list. To specify these files and folders, click Show. In the Show Contents dialog box, in the Value Name column box, type the fully qualified UNC path to the file or folder. Leave the Value column field blank.
# 
# If you disable this policy setting, the list of files and folders is deleted, including any lists inherited from lower precedence GPOs, and the "Make Available Offline" command is displayed for all files and folders.
# 
# If you do not configure this policy setting, the "Make Available Offline" command is available for all files and folders.
# 
# Notes:
# 
# This policy setting appears in the Computer Configuration and User Configuration folders. If both policy settings are configured, the policy settings are combined, and the "Make Available Offline" command is unavailable  for all specified files and folders.
# 
# The "Make Available Offline" command is called "Always available offline" on computers running Windows Server 2012, Windows Server 2008 R2, Windows Server 2008, Windows 8, Windows 7, or Windows Vista.
# 
# This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching." It only affects the display of the "Make Available Offline" command in File Explorer.
# 
# If the "Remove 'Make Available Offline' command" policy setting is enabled, this setting has no effect.
#       
Remove "Make Available Offline" for these files and folders:
  lgpo.set:
  - name: Pol_NoPinFiles_1
  - setting:
      Lbl_NoPinFilesList:
      - placeholder1
      - placeholder2
  - policy_class: User
