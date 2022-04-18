# windows:SUPPORTED_WindowsXP_SP1_W2K_SP4_NETSERVER
#
# This policy setting disables the more secure default setting for the user's roaming user profile folder.
# 
# After an administrator has configured a user's roaming profile, the profile will be created at the user's next login. The profile is created at the location that is specified by the administrator.
# 
# For Windows 2000 Professional pre-SP4 and Windows XP pre-SP1 operating systems, the default file permissions for the newly generated profile are full control access for the user and no file access for the administrators group. No checks are made for the correct permissions if the profile folder already exists. For Windows Server 2003 family, Windows 2000 Professional SP4 and Windows XP SP1, the default behavior is to check the folder for the correct permissions if the profile folder already exists, and not copy files to or from the roaming folder if the permissions are not correct.
# 
# By configuring this policy setting, you can alter this behavior.
# 
# If you enable this policy setting Windows will not check the permissions for the folder in the case where the folder exists.
# 
# If you disable or do not configure this policy setting AND the roaming profile folder exists AND the user or administrators group are not the owner of the folder, Windows will not copy files to or from the roaming folder. The user will be shown an error message and an entry will be written to the event log. The user's cached profile will be used, or a temporary profile issued if no cached profile exists. 
# 
# Note: The policy setting must be configured on the client computer not the server for it to have any effect because the client computer sets the file share permissions for the roaming profile at creation time.
# 
# Note: The behavior when this policy setting is enabled is exactly the same behavior as in Windows 2000 Professional pre-SP4 and Windows XP Professional.
Do not check for user ownership of Roaming Profile Folders:
  lgpo.set:
  - name: CompatibleRUPSecurity
  - setting: Enabled
  - policy_class: Machine
