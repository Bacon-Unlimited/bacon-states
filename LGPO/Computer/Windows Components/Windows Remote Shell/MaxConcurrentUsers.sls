# windows:SUPPORTED_WindowsVista
#
# This policy setting configures the maximum number of users able to concurrently perform remote shell operations on the system.
# 
# The value can be any  number from 1 to 100.
# 
# If you enable this policy setting, the new shell connections are rejected if they exceed the specified limit.
# 
# If you disable or do not configure this policy setting, the default number is five users.
MaxConcurrentUsers:
  lgpo.set:
  - name: MaxConcurrentUsers
  - setting:
      MaxConcurrentUsers: decimal-placeholder
  - policy_class: Machine
