# windows:SUPPORTED_Windows_10_0_SERVER
#
# 
#         Allows an administrator to specify if Automatic Exclusions feature for Server SKUs should be turned off.
# 
#         Disabled (Default):
#         Microsoft Defender will exclude pre-defined list of paths from the scan to improve performance.
# 
#         Enabled:
#         Microsoft Defender will not exclude pre-defined list of paths from scans. This can impact machine performance in some scenarios.
# 
#         Not configured:
#         Same as Disabled.
#     
Turn off Auto Exclusions:
  lgpo.set:
  - name: DisableAutoExclusions
  - setting: Enabled
  - policy_class: Machine
