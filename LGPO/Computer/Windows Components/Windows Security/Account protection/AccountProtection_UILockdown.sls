# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#         Hide the Account protection area in Windows Security.
# 
#         Enabled:
#         The Account protection area will be hidden.
# 
#         Disabled:
#         The Account protection area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Account protection area:
  lgpo.set:
  - name: AccountProtection_UILockdown
  - setting: Enabled
  - policy_class: Machine
