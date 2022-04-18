# windows:SUPPORTED_Windows_10_0_RS4
#
# 
#         Hide the Ransomware data recovery area in Windows Security.
# 
#         Enabled:
#         The Ransomware data recovery area will be hidden.
# 
#         Disabled:
#         The Ransomware data recovery area will be shown.
# 
#         Not configured:
#         Same as Disabled.
#     
Hide the Ransomware data recovery area:
  lgpo.set:
  - name: VirusThreatProtection_HideRansomwareRecovery
  - setting: Enabled
  - policy_class: Machine
