# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance activation random delay.
# 
#           The maintenance random delay is the amount of time up to which Automatic Maintenance will delay starting from its Activation Boundary.
# 
#           If you enable this policy setting, Automatic Maintenance will delay starting from its Activation Boundary, by upto this time.
# 
#           If you do not configure this policy setting, 4 hour random delay will be applied to Automatic Maintenance.
# 
#           If you disable this policy setting, no random delay will be applied to Automatic Maintenance.
#       
Automatic Maintenance Random Delay:
  lgpo.set:
  - name: RandomDelayPolicy
  - setting:
      RandomDelay: text-placeholder
  - policy_class: Machine
