# windows:SUPPORTED_Win2k
#
# Prevents users from changing the path to their profile folders.
# 
# By default, a user can change the location of their individual profile folders like Documents, Music etc. by typing a new path in the Locations tab of the folder's Properties dialog box.
# 
# If you enable this setting, users are unable to type a new location in the Target box.
Prohibit User from manually redirecting Profile Folders:
  lgpo.set:
  - name: DisablePersonalDirChange
  - setting: Enabled
  - policy_class: User
