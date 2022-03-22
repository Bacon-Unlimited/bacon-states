# windows:SUPPORTED_Windows8
#
# This policy setting determines whether Windows Error Reporting (WER) checks for a network cost policy that restricts the amount of data that is sent over the network.
# 
# If you enable this policy setting, WER does not check for network cost policy restrictions, and transmits data even if network cost is restricted.
# 
# If you disable or do not configure this policy setting, WER does not send data, but will check the network cost policy again if the network profile is changed.
Send data when on connected to a restricted/costed network:
  lgpo.set:
  - name: WerBypassNetworkCostThrottling_1
  - setting: Enabled
  - policy_class: User
