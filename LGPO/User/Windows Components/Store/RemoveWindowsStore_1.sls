# windows:SUPPORTED_Windows8
#
# Denies or allows access to the Store application.
# 
# If you enable this setting, access to the Store application is denied. Access to the Store is required for installing app updates.
# 
# If you disable or don't configure this setting, access to the Store application is allowed.
Turn off the Store application:
  lgpo.set:
  - name: RemoveWindowsStore_1
  - setting: Enabled
  - policy_class: User
