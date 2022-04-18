# windows:SUPPORTED_Win2k
#
# This policy setting determines whether Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off. 
# 
# Roaming profiles reside on a network server. By default, when users with roaming profiles log off, the system also saves a copy of their roaming profile on the hard drive of the computer they are using in case the server that stores the roaming profile is unavailable when the user logs on again. The local copy is also used when the remote copy of the roaming user profile is slow to load.
# 
# If you enable this policy setting, any local copies of the user's roaming profile are deleted when the user logs off. The roaming profile still remains on the network server that stores it.
# 
# If you disable or do not configure this policy setting, Windows keeps a copy of a user's roaming profile on the local computer's hard drive when the user logs off.
# 
# Important: Do not enable this policy setting if you are using the slow link detection feature. To respond to a slow link, the system requires a local copy of the user's roaming profile.
Delete cached copies of roaming profiles:
  lgpo.set:
  - name: DeleteRoamingCachedProfiles
  - setting: Enabled
  - policy_class: Machine
