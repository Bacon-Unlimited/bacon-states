# windows:SUPPORTED_Windows8
#
# This policy setting allows you to specify the location and root (file share or local path) of a user's home folder for a logon session.
# 
# If you enable this policy setting, the user's home folder is configured to the specified local or network location, creating a new folder for each user name.
# 
# To use this policy setting, in the Location list, choose the location for the home folder. If you choose On the network, enter the path to a file share in the Path box (for example, \\ComputerName\ShareName), and then choose the drive letter to assign to the file share. If you choose On the local computer, enter a local path (for example, C:\HomeFolder) in the Path box.
# 
# Do not specify environment variables or ellipses in the path. Also, do not specify a placeholder for the user name because the user name will be appended at logon.
# 
# Note: The Drive letter box is ignored if you choose On the local computer from the Location list. If you choose On the local computer and enter a file share, the user's home folder will be placed in the network location without mapping the file share to a drive letter.
# 
# If you disable or do not configure this policy setting, the user's home folder is configured as specified in the user's Active Directory Domain Services account.
# 
# If the "Set Remote Desktop Services User Home Directory" policy setting is enabled, the Set user home folder policy setting has no effect.
Set user home folder:
  lgpo.set:
  - name: USER_HOME
  - setting:
      DRIVE_LETTER: enum-placeholder
      HOME_PATH: text-placeholder
      USER_HOME_LOCATION: enum-placeholder
  - policy_class: Machine
