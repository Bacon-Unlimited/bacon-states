####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\System\User Profiles\CompatibleRUPSecurity.sls
#
# SUPPORTED WINDOWS OS
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
