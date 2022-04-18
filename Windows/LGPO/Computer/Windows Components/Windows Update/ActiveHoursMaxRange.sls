# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enable this policy to specify the maximum number of hours from the start time that users can set their active hours.
# 
# The max active hours range can be set between 8 and 18 hours.
# 
# If you disable or do not configure this policy, the default max active hours range will be used.
#       
Specify active hours range for auto-restarts:
  lgpo.set:
  - name: ActiveHoursMaxRange
  - setting:
      ActiveHoursMaxRange: enum-placeholder
  - policy_class: Machine
