# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure monitoring for file and program activity.
# 
#     If you enable or do not configure this setting, monitoring for file and program activity will be enabled.
# 
#     If you disable this setting, monitoring for file and program activity will be disabled.
Monitor file and program activity on your computer:
  lgpo.set:
  - name: RealtimeProtection_DisableOnAccessProtection
  - setting: Enabled
  - policy_class: Machine
