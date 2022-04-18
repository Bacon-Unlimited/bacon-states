# windows:SUPPORTED_Windows8
#
# This policy setting allows you to configure scanning for all downloaded files and attachments.
# 
#     If you enable or do not configure this setting, scanning for all downloaded files and attachments will be enabled.
# 
#     If you disable this setting, scanning for all downloaded files and attachments will be disabled.
Scan all downloaded files and attachments:
  lgpo.set:
  - name: RealtimeProtection_DisableIOAVProtection
  - setting: Enabled
  - policy_class: Machine
