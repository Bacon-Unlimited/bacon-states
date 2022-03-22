# SUPPORTED_IE8
#
# This policy setting restricts the list of Accelerators that the user can access to only the set deployed through Group Policy.
# 
# If you enable this policy setting, the user can access only Accelerators that are deployed through Group Policy. The user cannot add or delete Accelerators.
# 
# If you disable or do not configure this policy setting, the user can access any Accelerators that he or she has installed.
Restrict Accelerators to those deployed through Group Policy:
  lgpo.set:
  - name: UsePolicyAccelerators
  - setting: Enabled
  - policy_class: Machine
