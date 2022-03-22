# windows:SUPPORTED_WindowsXPSP2_Or_WindowsNETSP1
#
# This policy setting determines whether the system retains a roaming user's Windows Installer and Group Policy based software installation data on their profile deletion.
# 
# By default Windows deletes all information related to a roaming user (which includes the user's settings, data, Windows Installer related data, and the like) when their profile is deleted. As a result, the next time a roaming user whose profile was previously deleted on that client logs on, they will need to reinstall all apps published via policy at logon increasing logon time. You can use this policy setting to change this behavior.
# 
# If you enable this policy setting, Windows will not delete Windows Installer or Group Policy software installation data for roaming users when profiles are deleted from the machine. This will improve the performance of Group Policy based Software Installation during user logon when a user profile is deleted and that user subsequently logs on to the machine.
# 
# If you disable or do not configure this policy setting, Windows will delete the entire profile for roaming users, including the Windows Installer and Group Policy software installation data when those profiles are deleted.
# 
# Note: If this policy setting is enabled for a machine, local administrator action is required to remove the Windows Installer or Group Policy software installation data stored in the registry and file system of roaming users' profiles on the machine.
Leave Windows Installer and Group Policy Software Installation Data:
  lgpo.set:
  - name: LeaveAppMgmtData
  - setting: Enabled
  - policy_class: Machine
