# windows:SUPPORTED_Windows_10_0
#
# 
#       Use this policy setting to specify if you want Microsoft Defender Antivirus enhanced notifications to display on clients.
#       
#       If you disable or do not configure this setting, Microsoft Defender Antivirus enhanced notifications will display on clients.
#       
#       If you enable this setting, Microsoft Defender Antivirus enhanced notifications will not display on clients.
#     
Turn off enhanced notifications:
  lgpo.set:
  - name: Reporting_DisableEnhancedNotifications
  - setting: Enabled
  - policy_class: Machine
