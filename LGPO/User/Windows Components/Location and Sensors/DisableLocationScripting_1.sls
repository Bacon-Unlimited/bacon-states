# windows:SUPPORTED_Windows7
#
# 
#         This policy setting turns off scripting for the location feature.
# 
#         If you enable this policy setting, scripts for the location feature will not run.
# 
#         If you disable or do not configure this policy setting, all location scripts will run.
#       
Turn off location scripting:
  lgpo.set:
  - name: DisableLocationScripting_1
  - setting: Enabled
  - policy_class: User
