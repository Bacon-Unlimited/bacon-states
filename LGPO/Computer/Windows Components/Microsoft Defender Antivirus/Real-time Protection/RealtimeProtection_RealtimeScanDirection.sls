# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure monitoring for incoming and outgoing files, without having to turn off monitoring entirely. It is recommended for use on servers where there is a lot of incoming and outgoing file activity but for performance reasons need to have scanning disabled for a particular scan direction. The appropriate configuration should be evaluated based on the server role. 
# 
#     Note that this configuration is only honored for NTFS volumes. For any other file system type, full monitoring of file and program activity will be present on those volumes.
# 
#     The options for this setting are mutually exclusive:
#     0 = Scan incoming and outgoing files (default)
#     1 = Scan incoming files only
#     2 = Scan outgoing files only
# 
#     Any other value, or if the value does not exist, resolves to the default (0).
# 
#     If you enable this setting, the specified type of monitoring will be enabled.
# 
#     If you disable or do not configure this setting, monitoring for incoming and outgoing files will be enabled.
Configure monitoring for incoming and outgoing file and program activity:
  lgpo.set:
  - name: RealtimeProtection_RealtimeScanDirection
  - setting:
      RealtimeProtection_RealtimeScanDirection: enum-placeholder
  - policy_class: Machine
