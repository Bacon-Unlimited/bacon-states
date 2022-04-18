# windows:SUPPORTED_WindowsVista
#
# 
#     This policy setting allows you to configure whether Microsoft Defender Antivirus automatically takes action on all detected threats. The action to be taken on a particular threat is determined by the combination of the policy-defined action, user-defined action, and the signature-defined action.
# 
#     If you enable this policy setting, Microsoft Defender Antivirus does not automatically take action on the detected threats, but prompts users to choose from the actions available for each threat.
# 
#     If you disable or do not configure this policy setting, Microsoft Defender Antivirus automatically takes action on all detected threats after a nonconfigurable delay of approximately five seconds.
Turn off routine remediation:
  lgpo.set:
  - name: DisableRoutinelyTakingAction
  - setting: Enabled
  - policy_class: Machine
