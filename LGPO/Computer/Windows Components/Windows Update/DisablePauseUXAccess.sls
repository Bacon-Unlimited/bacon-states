# windows:SUPPORTED_Windows_10_0_RS5
#
# This setting allows to remove access to "Pause updates" feature.
# 
# Once enabled user access to pause updates is removed.
#       
Remove access to "Pause updates" feature:
  lgpo.set:
  - name: DisablePauseUXAccess
  - setting: Enabled
  - policy_class: Machine
