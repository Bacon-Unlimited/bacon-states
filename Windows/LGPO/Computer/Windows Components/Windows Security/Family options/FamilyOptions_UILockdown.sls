# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide the Family options area in Windows Security.
# 
#         Enabled:
#         The Family options area will be hidden.
# 
#         Disabled:
#         The Family options area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Family options area:
  lgpo.set:
  - name: FamilyOptions_UILockdown
  - setting: Enabled
  - policy_class: Machine
