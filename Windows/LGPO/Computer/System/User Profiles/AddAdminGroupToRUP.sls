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
# LOCATION: \Computer\System\User Profiles\AddAdminGroupToRUP.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsXP
#
# This policy setting adds the Administrator security group to the roaming user profile share.
# 
# Once an administrator has configured a user's roaming profile, the profile will be created at the user's next login. The profile is created at the location that is specified by the administrator.
# 
# For the Windows XP Professional and Windows 2000 Professional operating systems, the default file permissions for the newly generated profile are full control, or read and write access for the user, and no file access for the administrators group.
# 
# By configuring this policy setting, you can alter this behavior.
# 
# If you enable this policy setting, the administrator group is also given full control to the user's profile folder.
# 
# If you disable or do not configure this policy setting, only the user is given full control of their user profile, and the administrators group has no file system access to this folder.
# 
# Note: If the policy setting is enabled after the profile is created, the policy setting has no effect.
# 
# Note: The policy setting must be configured on the client computer, not the server, for it to have any effect, because the client computer sets the file share permissions for the roaming profile at creation time.
# 
# Note: In the default case, administrators have no file access to the user's profile, but they may still take ownership of this folder to grant themselves file permissions.
# 
# Note: The behavior when this policy setting is enabled is exactly the same behavior as in Windows NT 4.0.
Add the Administrators security group to roaming user profiles:
  lgpo.set:
  - name: AddAdminGroupToRUP
  - setting: Enabled
  - policy_class: Machine
