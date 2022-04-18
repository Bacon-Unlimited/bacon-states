# windows:SUPPORTED_Windows8
#
# This policy setting controls the use of fast startup.  
# 
# If you enable this policy setting, the system requires hibernate to be enabled.
# 
# If you disable or do not configure this policy setting, the local setting is used.
Require use of fast startup:
  lgpo.set:
  - name: Hiberboot
  - setting: Enabled
  - policy_class: Machine
