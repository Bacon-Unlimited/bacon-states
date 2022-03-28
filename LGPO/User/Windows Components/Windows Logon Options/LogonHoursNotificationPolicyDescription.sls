# windows:SUPPORTED_WindowsVista
#
# This policy controls whether the logged on user should be notified when his logon hours are about to expire. By default, a user is notified before logon hours expire, if actions have been set to occur when the logon hours expire.
# 
# If you enable this setting, warnings are not displayed to the user before the logon hours expire.
# 
# If you disable or do not configure this setting, users receive warnings before the logon hours expire, if actions have been set to occur when the logon hours expire.
# 
# Note: If you configure this setting, you might want to examine and appropriately configure the Set action to take when logon hours expire setting. If Set action to take when logon hours expire is disabled or not configured, the Remove logon hours expiration warnings setting will have no effect, and users receive no warnings about logon hour expiration
Remove logon hours expiration warnings:
  lgpo.set:
  - name: LogonHoursNotificationPolicyDescription
  - setting: Enabled
  - policy_class: User
