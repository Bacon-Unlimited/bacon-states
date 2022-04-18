# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#         Hide the Device security area in Windows Security.
# 
#         Enabled:
#         The Device security area will be hidden.
# 
#         Disabled:
#         The Device security area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Device security area:
  lgpo.set:
  - name: DeviceSecurity_UILockdown
  - setting: Enabled
  - policy_class: Machine
