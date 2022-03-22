# windows:SUPPORTED_WindowsVista
#
# This policy controls which action will be taken when the logon hours expire for the logged on user. The actions include lock the workstation, disconnect the user, or log the user off completely.
# 
# If you choose to lock or disconnect a session, the user cannot unlock the session or reconnect except during permitted logon hours.
# 
# If you choose to log off a user, the user cannot log on again except during permitted logon hours. If you choose to log off a user, the user might lose unsaved data.
# 
# If you enable this setting, the system will perform the action you specify when the user’s logon hours expire.
# 
# If you disable or do not configure this setting, the system takes no action when the user’s logon hours expire. The user can continue the existing session, but cannot log on to a new session.
# 
# Note: If you configure this setting, you might want to examine and appropriately configure the “Remove logon hours expiration warnings” setting
Set action to take when logon hours expire:
  lgpo.set:
  - name: LogonHoursPolicyDescription
  - setting:
      LogonHoursPolicyDescription: enum-placeholder
  - policy_class: User
