# windows:SUPPORTED_Windows7
#
# 
#         This policy setting turns off the location feature for this computer.
# 
#         If you enable this policy setting, the location feature is turned off, and all programs on this computer are prevented from using location information from the location feature.
# 
#         If you disable or do not configure this policy setting, all programs on this computer will not be prevented from using location information from the location feature.
#       
Turn off location:
  lgpo.set:
  - name: DisableLocation_1
  - setting: Enabled
  - policy_class: User
