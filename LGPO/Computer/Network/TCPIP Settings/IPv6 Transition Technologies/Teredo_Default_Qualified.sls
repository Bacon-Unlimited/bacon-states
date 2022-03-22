# windows:SUPPORTED_Windows7
#
# This policy setting allows you to set Teredo to be ready to communicate, a process referred to as qualification. By default, Teredo enters a dormant state when not in use. The qualification process brings it out of a dormant state.
# 
# If you disable or do not configure this policy setting, the local host setting is used.
# 
# This policy setting contains only one state:
# 
# Policy Enabled State: If Default Qualified is enabled, Teredo will attempt qualification immediately and remain qualified if the qualification process succeeds.
# 
Set Teredo Default Qualified:
  lgpo.set:
  - name: Teredo_Default_Qualified
  - setting:
      StateSelect: enum-placeholder
  - policy_class: Machine
