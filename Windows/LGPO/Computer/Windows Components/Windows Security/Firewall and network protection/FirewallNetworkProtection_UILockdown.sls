# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide the Firewall and network protection area in Windows Security.
# 
#         Enabled:
#         The Firewall and network protection area will be hidden.
# 
#         Disabled:
#         The Firewall and network protection area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Firewall and network protection area:
  lgpo.set:
  - name: FirewallNetworkProtection_UILockdown
  - setting: Enabled
  - policy_class: Machine
