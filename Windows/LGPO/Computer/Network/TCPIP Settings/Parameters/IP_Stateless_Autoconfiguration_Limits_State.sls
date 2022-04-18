# windows:SUPPORTED_Windows7
#
# This policy setting allows you to configure IP Stateless Autoconfiguration Limits.
# 
# If you enable or do not configure this policy setting, IP Stateless Autoconfiguration Limits will be enabled and system will limit the number of autoconfigured addresses and routes.
# 
# If you disable this policy setting, IP Stateless Autoconfiguration Limits will be disabled and system will not limit the number of autoconfigured addresses and routes.
# 
# 
Set IP Stateless Autoconfiguration Limits State:
  lgpo.set:
  - name: IP_Stateless_Autoconfiguration_Limits_State
  - setting: Enabled
  - policy_class: Machine
