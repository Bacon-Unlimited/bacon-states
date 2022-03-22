# windows:SUPPORTED_WindowsVista
#
# This policy setting allows an administrator to standardize the account pictures for all users on a system to the default account picture. One application for this policy setting is to standardize the account pictures to a company logo.
# 
# Note: The default account picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\user.jpg. The default guest picture is stored at %PROGRAMDATA%\Microsoft\User Account Pictures\guest.jpg. If the default pictures do not exist, an empty frame is displayed.
# 
# If you enable this policy setting, the default user account picture will display for all users on the system with no customization allowed.
# 
# If you disable or do not configure this policy setting, users will be able to customize their account pictures.
Apply the default account picture to all users:
  lgpo.set:
  - name: UseDefaultTile
  - setting: Enabled
  - policy_class: Machine
