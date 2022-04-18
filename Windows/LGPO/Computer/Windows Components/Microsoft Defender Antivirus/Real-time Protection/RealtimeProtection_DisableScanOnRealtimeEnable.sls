# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure process scanning when real-time protection is turned on. This helps to catch malware which could start when real-time protection is turned off.
# 
#     If you enable or do not configure this setting,  a process scan will be initiated when real-time protection is turned on.
# 
#     If you disable this setting, a process scan will not be initiated when real-time protection is turned on.
Turn on process scanning whenever real-time protection is enabled:
  lgpo.set:
  - name: RealtimeProtection_DisableScanOnRealtimeEnable
  - setting: Enabled
  - policy_class: Machine
