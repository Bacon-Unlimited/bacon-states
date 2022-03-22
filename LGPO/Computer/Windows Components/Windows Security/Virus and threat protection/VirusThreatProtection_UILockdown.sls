# windows:SUPPORTED_Windows_10_0_RS3
#
# 
#         Hide the Virus and threat protection area in Windows Security.
# 
#         Enabled:
#         The Virus and threat protection area will be hidden.
# 
#         Disabled:
#         The Virus and threat protection area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Virus and threat protection area:
  lgpo.set:
  - name: VirusThreatProtection_UILockdown
  - setting: Enabled
  - policy_class: Machine
