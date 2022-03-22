# windows:SUPPORTED_WindowsXP
#
# This policy setting determines if the changes a user makes to their roaming profile are merged with the server copy of their profile.
# 
# By default, when a user with a roaming profile logs on to a computer, the roaming profile is copied down to the local computer. If the user has logged on to the computer in the past, the roaming profile is merged with the local profile. Similarly, when the user logs off the computer, the local copy of their profile, including any changes, is merged with the server copy of the profile.
# 
# Using this policy setting, you can prevent changes made to a roaming profile on a particular computer from being persisted.
# 
# If you enable this policy setting, changes a user makes to their roaming profile aren't merged with the server (roaming) copy when the user logs off.
# 
# If you disable or not configure this policy setting, the default behavior occurs, as indicated above.
# 
# Note: This policy setting only affects roaming profile users.
Prevent Roaming Profile changes from propagating to the server:
  lgpo.set:
  - name: Readonlyuserprofile
  - setting: Enabled
  - policy_class: Machine
