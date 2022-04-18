# windows:SUPPORTED_Windows_10_0
#
# Use this policy setting to specify if you want Microsoft Defender Antivirus notifications to display on clients.
#       If you disable or do not configure this setting, Microsoft Defender Antivirus notifications will display on clients.
# 
#       If you enable this setting, Microsoft Defender Antivirus notifications will not display on clients.
#     
Suppress all notifications:
  lgpo.set:
  - name: UX_Configuration_Notification_Suppress
  - setting: Enabled
  - policy_class: Machine
