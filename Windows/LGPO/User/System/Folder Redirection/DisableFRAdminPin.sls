# windows:SUPPORTED_WindowsXP
#
# This policy setting allows you to control whether all redirected shell folders, such as Contacts, Documents, Desktop, Favorites, Music, Pictures, Videos, Start Menu, and AppData\Roaming, are available offline by default.
# 
# If you enable this policy setting, users must manually select the files they wish to make available offline.  
# 
# If you disable or do not configure this policy setting, redirected shell folders are automatically made available offline. All subfolders within the redirected folders are also made available offline.  
# 
# Note: This policy setting does not prevent files from being automatically cached if the network share is configured for "Automatic Caching", nor does it affect the availability of the "Always available offline" menu option in the user interface.  
# 
# Note: Do not enable this policy setting if users will need access to their redirected files if the network or server holding the redirected files becomes unavailable.
# 
# Note: If one or more valid folder GUIDs are specified in the policy setting "Do not automatically make specific redirected folders available offline", that setting will override the configured value of "Do not automatically make all redirected folders available offline".
#       
Do not automatically make all redirected folders available offline:
  lgpo.set:
  - name: DisableFRAdminPin
  - setting: Enabled
  - policy_class: User
