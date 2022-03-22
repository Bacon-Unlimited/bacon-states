# windows:SUPPORTED_WindowsVista
#
# This policy setting allows an administrator to automatically delete user profiles on system restart that have not been used within a specified number of days. Note: One day is interpreted as 24 hours after a specific user profile was accessed.
# 
# If you enable this policy setting, the User Profile Service will automatically delete on the next system restart all user profiles on the computer that have not been used within the specified number of days. 
# 
# If you disable or do not configure this policy setting, User Profile Service will not automatically delete any profiles on the next system restart.
Delete user profiles older than a specified number of days on system restart:
  lgpo.set:
  - name: CleanupProfiles
  - setting:
      CleanupProfiles_Days: decimal-placeholder
  - policy_class: Machine
