# windows:SUPPORTED_Windows8
#
# 
#           This policy setting allows you to configure Automatic Maintenance activation boundary.
# 
#           The maintenance activation boundary is the daily schduled time at which Automatic Maintenance starts
# 
#           If you enable this policy setting, this will override the default daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel.
# 
#           If you disable or do not configure this policy setting, the daily scheduled time as specified in Security and Maintenance/Automatic Maintenance Control Panel will apply.
#       
Automatic Maintenance Activation Boundary:
  lgpo.set:
  - name: ActivationBoundaryPolicy
  - setting:
      ActivationBoundary: text-placeholder
  - policy_class: Machine
