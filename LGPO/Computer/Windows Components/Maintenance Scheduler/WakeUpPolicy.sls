# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance wake up policy.
# 
#           The maintenance wakeup policy specifies if Automatic Maintenance should make a wake request to the OS for the daily scheduled maintenance. Note, that if the OS power wake policy is explicitly disabled, then this setting has no effect.
# 
#           If you enable this policy setting, Automatic Maintenance will attempt to set OS wake policy and make a wake request for the daily scheduled time, if required.
# 
#           If you disable or do not configure this policy setting, the wake setting as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
#       
Automatic Maintenance WakeUp Policy:
  lgpo.set:
  - name: WakeUpPolicy
  - setting: Enabled
  - policy_class: Machine
