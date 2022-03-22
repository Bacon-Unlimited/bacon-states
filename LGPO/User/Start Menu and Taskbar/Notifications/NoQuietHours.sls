# windows:SUPPORTED_Windows_6_3only
#
# 
#         This policy setting turns off Quiet Hours functionality.
#         
#         If you enable this policy setting, toast notifications will not be suppressed and some background tasks will not be deferred during the designated Quiet Hours time window each day.
#         
#         If you disable this policy setting, toast notifications will be suppressed and some background task deferred during the designated Quiet Hours time window.  Users will not be able to change this or any other Quiet Hours settings.
#         
#         If you do not configure this policy setting, Quiet Hours are enabled by default but can be turned off or by the administrator or user.
#       
Turn off Quiet Hours:
  lgpo.set:
  - name: NoQuietHours
  - setting: Enabled
  - policy_class: User
