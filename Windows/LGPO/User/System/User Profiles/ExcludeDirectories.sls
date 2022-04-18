# windows:SUPPORTED_Win2k
#
# This policy setting lets you exclude folders that are normally included in the user's profile. As a result, these folders do not need to be stored by the network server on which the profile resides and do not follow users to other computers.
# 
# Note: When excluding content from the profile you should try to exclude the narrowest set of data that will address your needs. For example, if there is one application with data that should not be roamed then add only that application's specific folder under the AppData\Roaming folder rather than all of the AppData\Roaming folder to the exclusion list.
# 
# By default, the Appdata\Local and Appdata\LocalLow folders and all their subfolders such as the History, Temp, and Temporary Internet Files folders are excluded from the user's roaming profile.
# 
# In operating systems earlier than Microsoft Windows Vista, only the History, Local Settings, Temp, and Temporary Internet Files folders are excluded from the user's roaming profile by default.
# 
# If you enable this policy setting, you can exclude additional folders.
# 
# If you disable this policy setting or do not configure it, only the default folders are excluded.
# 
# Note: You cannot use this policy setting to include the default folders in a roaming user profile.
Exclude directories in roaming profile:
  lgpo.set:
  - name: ExcludeDirectories
  - setting:
      ExcludeMessage: text-placeholder
  - policy_class: User
