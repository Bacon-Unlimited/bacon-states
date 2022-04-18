# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide the Device performance and health area in Windows Security.
# 
#         Enabled:
#         The Device performance and health area will be hidden.
# 
#         Disabled:
#         The Device performance and health area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Device performance and health area:
  lgpo.set:
  - name: DevicePerformanceHealth_UILockdown
  - setting: Enabled
  - policy_class: Machine
