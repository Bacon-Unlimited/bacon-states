# windows:SUPPORTED_Windows_6_3only
#
# 
#         This policy setting blocks voice and video calls during Quiet Hours.
# 
#         If you enable this policy setting, voice and video calls will be blocked during the designated Quiet Hours time window each day, and users will not be able to customize any other Quiet Hours settings.
# 
#         If you disable this policy setting, voice and video calls will be allowed during Quiet Hours, and users will not be able to customize this or any other Quiet Hours settings.
# 
#         If you do not configure this policy setting, voice and video calls will be allowed during Quiet Hours by default.  Adminstrators and users will be able to modify this setting.
#       
Turn off calls during Quiet Hours:
  lgpo.set:
  - name: NoCallsDuringQuietHours
  - setting: Enabled
  - policy_class: User
