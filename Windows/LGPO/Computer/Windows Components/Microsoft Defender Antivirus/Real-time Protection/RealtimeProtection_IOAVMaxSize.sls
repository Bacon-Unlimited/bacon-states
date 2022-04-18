# windows:SUPPORTED_Windows8
#
# This policy setting defines the maximum size (in kilobytes) of downloaded files and attachments that will be scanned.
# 
#     If you enable this setting, downloaded files and attachments smaller than the size specified will be scanned.
# 
#     If you disable or do not configure this setting, a default size will be applied.
Define the maximum size of downloaded files and attachments to be scanned:
  lgpo.set:
  - name: RealtimeProtection_IOAVMaxSize
  - setting:
      RealtimeProtection_IOAVMaxSize: decimal-placeholder
  - policy_class: Machine
