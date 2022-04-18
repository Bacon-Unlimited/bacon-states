# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum number of concurrent shells any user can remotely open on the same system.
# 
# Any number from 0 to 0x7FFFFFFF cand be set, where 0 means unlimited number of shells.
# 
# If you enable this policy setting, the user cannot open new remote shells if the count exceeds the specified limit.
# 
# If you disable or do not configure this policy setting, by default the limit is set to two remote shells per user.
#       
Specify maximum number of remote shells per user:
  lgpo.set:
  - name: MaxShellsPerUser
  - setting:
      MaxShellsPerUser: decimal-placeholder
  - policy_class: Machine
