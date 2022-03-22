# windows:SUPPORTED_Win2k
#
# This policy setting provides users with the ability to download their roaming profile, even when a slow network connection with their roaming profile server is detected.
# 
# If you enable this policy setting, users will be allowed to define whether they want their roaming profile to be downloaded when a slow link with their roaming profile server is detected.
# 
# In operating systems earlier than Microsoft Windows Vista, a dialog box will be shown to the user during logon if a slow network connection is detected. The user then is able to choose to download the remote copy of the user profile. In Microsoft Windows Vista, a check box appears on the logon screen and the user must choose whether to download the remote user profile before Windows detects the network connection speed.  
# 
# If you disable or do not configure this policy setting, the system does not consult the user. Instead, the system uses the local copy of the user profile. If you have enabled the "Wait for remote user profile" policy setting, the system downloads the remote copy of the user profile without consulting the user. In Microsoft Windows Vista, the system will ignore the user choice made on the logon screen.
# 
# Note: This policy setting and related policy settings in this folder define the system's response when roaming user profiles are slow to download. To adjust the time within which the user must respond to this notice in operating systems earlier than Microsoft Windows Vista, use the "Timeout for dialog boxes" policy setting.
# 
# Important: If the "Do not detect slow network connections" setting is enabled, this policy setting is ignored. Also, if the "Delete cached copies of roaming profiles" policy setting is enabled, there is no local copy of the roaming profile to load when the system detects a slow connection.
Prompt user when a slow network connection is detected:
  lgpo.set:
  - name: EnableSlowLinkUI
  - setting: Enabled
  - policy_class: Machine
