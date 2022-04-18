# windows:SUPPORTED_WindowsVista
#
# This policy setting controls whether additional data in support of error reports can be sent to Microsoft automatically.
# 
# If you enable this policy setting, any additional data requests from Microsoft in response to a Windows Error Reporting report are automatically declined, without notification to the user.
# 
# If you disable or do not configure this policy setting, then consent policy settings in Computer Configuration/Administrative Templates/Windows Components/Windows Error Reporting/Consent take precedence.
Do not send additional data:
  lgpo.set:
  - name: WerNoSecondLevelData_2
  - setting: Enabled
  - policy_class: Machine
