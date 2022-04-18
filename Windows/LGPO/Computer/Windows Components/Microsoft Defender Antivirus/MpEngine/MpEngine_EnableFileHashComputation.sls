# windows:supported_windows_10_0_rs7
#
# 
#         Enable or disable file hash computation feature.
# 
#         Enabled:
#         When this feature is enabled Microsoft Defender will compute hash value for files it scans.
# 
#         Disabled:
#         File hash value is not computed
#         
#         Not configured:
#         Same as Disabled.
#     
Enable file hash computation feature:
  lgpo.set:
  - name: MpEngine_EnableFileHashComputation
  - setting: Enabled
  - policy_class: Machine
