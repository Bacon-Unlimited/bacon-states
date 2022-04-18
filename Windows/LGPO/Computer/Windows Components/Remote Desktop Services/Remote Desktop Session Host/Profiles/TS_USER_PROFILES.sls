# windows:SUPPORTED_WindowsNET
#
# This policy setting allows you to specify the network path that Remote Desktop Services uses for roaming user profiles.
# 
# By default, Remote Desktop Services stores all user profiles locally on the RD Session Host server. You can use this policy setting to specify a network share where user profiles can be centrally stored, allowing a user to access the same profile for sessions on all RD Session Host servers that are configured to use the network share for user profiles.
# 
# If you enable this policy setting, Remote Desktop Services uses the specified path as the root directory for all user profiles. The profiles are contained in subfolders named for the account name of each user.
# 
# To configure this policy setting, type the path to the network share in the form of \\Computername\Sharename. Do not specify a placeholder for the user account name, because Remote Desktop Services automatically adds this when the user logs on and the profile is created. If the specified network share does not exist, Remote Desktop Services displays an error message on the RD Session Host server and will store the user profiles locally on the RD Session Host server.
# 
# If you disable or do not configure this policy setting, user profiles are stored locally on the RD Session Host server. You can configure a user's profile path on the Remote Desktop Services Profile tab on the user's account Properties dialog box.
# 
# Notes:
# 1. The roaming user profiles enabled by the policy setting apply only to Remote Desktop Services connections. A user might also have a Windows roaming user profile configured. The Remote Desktop Services roaming user profile always takes precedence in a Remote Desktop Services session.
# 2. To configure a mandatory Remote Desktop Services roaming user profile for all users connecting remotely to the RD Session Host server, use this policy setting together with the "Use mandatory profiles on the RD Session Host server" policy setting located in Computer Configuration\Administrative Templates\Windows Components\Remote Desktop Services\RD Session Host\Profiles. The path set in the "Set path for Remote Desktop Services Roaming User Profile" policy setting should contain the mandatory profile.
Set path for Remote Desktop Services Roaming User Profile:
  lgpo.set:
  - name: TS_USER_PROFILES
  - setting:
      TS_PROFILE_PATH: text-placeholder
  - policy_class: Machine
