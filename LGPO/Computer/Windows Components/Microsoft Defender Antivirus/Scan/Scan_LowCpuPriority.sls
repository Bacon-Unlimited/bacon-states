# windows:SUPPORTED_Windows_10_0_RS5
#
# 
#         This policy setting allows you to enable or disable low CPU priority for scheduled scans.
# 
#         If you enable this setting, low CPU priority will be used during scheduled scans.
# 
#         If you disable or do not configure this setting, not changes will be made to CPU priority for scheduled scans.
#     
Configure low CPU priority for scheduled scans:
  lgpo.set:
  - name: Scan_LowCpuPriority
  - setting: Enabled
  - policy_class: Machine
