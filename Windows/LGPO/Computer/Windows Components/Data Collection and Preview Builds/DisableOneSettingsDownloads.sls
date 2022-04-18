# windows:SUPPORTED_Windows_10_0_RS7
#
# This policy setting controls whether Windows attempts to connect with the OneSettings service.
# 
# If you enable this policy, Windows will not attempt to connect with the OneSettings Service.
# 
# If you disable or don't configure this policy setting, Windows will periodically attempt to connect with the OneSettings service to download configuration settings.
#       
Disable OneSettings Downloads:
  lgpo.set:
  - name: DisableOneSettingsDownloads
  - setting: Enabled
  - policy_class: Machine
