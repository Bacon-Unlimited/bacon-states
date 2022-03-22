# windows:SUPPORTED_Windows_10_0_RS7
#
# This policy setting controls whether Windows records attempts to connect with the OneSettings service to the EventLog.
# 
# If you enable this policy, Windows will record attempts to connect with the OneSettings service to the Microsoft\Windows\Privacy-Auditing\Operational EventLog channel.
# 
# If you disable or don't configure this policy setting, Windows will not record attempts to connect with the OneSettings service to the EventLog.
#       
Enable OneSettings Auditing:
  lgpo.set:
  - name: EnableOneSettingsAuditing
  - setting: Enabled
  - policy_class: Machine
