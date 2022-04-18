# windows:SUPPORTED_Windows8
#
# This policy setting prevents the Group Policy Client Service from stopping when idle.
# 
# 
Turn off Group Policy Client Service AOAC optimization:
  lgpo.set:
  - name: DisableAOACProcessing
  - setting: Enabled
  - policy_class: Machine
