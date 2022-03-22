# windows:SUPPORTED_Windows_10_0
#
#  
#             This policy setting controls whether OS Reactivation is blocked on a device. 
#             Policy Options: 
#                 -   Not Configured (default -- Windows registration and reactivation is allowed)
#                 -   Disabled (Windows registration and reactivation is not allowed)
#                 -   Enabled (Windows registration is allowed)
#         
Control Device Reactivation for Retail devices:
  lgpo.set:
  - name: AllowWindowsEntitlementReactivation
  - setting: Enabled
  - policy_class: Machine
