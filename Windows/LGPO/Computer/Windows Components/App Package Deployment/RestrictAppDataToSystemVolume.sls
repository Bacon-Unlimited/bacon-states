# windows:SUPPORTED_Windows_6_3_Update2
#
# 
#         Prevent users' app data from moving to another location when an app is moved or installed on another location.
# 
#         If you enable this setting, all users' app data will stay on the system volume, regardless of where the app is installed.
# 
#         If you disable or do not configure this setting, then when an app is moved to a different volume, the users' app data will also move to this volume.
#       
Prevent users' app data from being stored on non-system volumes:
  lgpo.set:
  - name: RestrictAppDataToSystemVolume
  - setting: Enabled
  - policy_class: Machine
