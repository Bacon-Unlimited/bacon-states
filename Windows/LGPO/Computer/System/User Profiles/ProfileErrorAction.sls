# windows:SUPPORTED_Win2k
#
# This policy setting will automatically log off a user when Windows cannot load their profile. 
# 
# If Windows cannot access the user profile folder or the profile contains errors that prevent it from loading, Windows logs on the user with a temporary profile. This policy setting allows the administrator to disable this behavior, preventing Windows from loggin on the user with a temporary profile.
# 
# If you enable this policy setting, Windows will not log on a user with a temporary profile. Windows logs the user off if their profile cannot be loaded.
# 
# If you disable this policy setting or do not configure it, Windows logs on the user with a temporary profile when Windows cannot load their user profile.
# 
# Also, see the "Delete cached copies of roaming profiles" policy setting.
Do not log users on with temporary profiles:
  lgpo.set:
  - name: ProfileErrorAction
  - setting: Enabled
  - policy_class: Machine
