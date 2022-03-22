# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure behavior monitoring.
# 
#     If you enable or do not configure this setting, behavior monitoring will be enabled.
# 
#     If you disable this setting, behavior monitoring will be disabled.
Turn on behavior monitoring:
  lgpo.set:
  - name: RealtimeProtection_DisableBehaviorMonitoring
  - setting: Enabled
  - policy_class: Machine
