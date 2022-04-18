# windows:SUPPORTED_Windows8
#
# This policy setting controls whether raw volume write notifications are sent to behavior monitoring.
# 
#     If you enable or do not configure this setting, raw write notifications will be enabled.
# 
#     If you disable this setting, raw write notifications be disabled.
Turn on raw volume write notifications:
  lgpo.set:
  - name: RealtimeProtection_DisableRawWriteNotification
  - setting: Enabled
  - policy_class: Machine
