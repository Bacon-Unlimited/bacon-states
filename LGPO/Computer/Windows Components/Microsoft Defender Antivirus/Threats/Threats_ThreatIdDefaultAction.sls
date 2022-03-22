# windows:SUPPORTED_Windows8
#
# This policy setting customize which remediation action will be taken for each listed Threat ID when it is detected during a scan. Threats should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a valid Threat ID, while the value contains the action ID for the remediation action that should be taken.
# 
#     Valid remediation action values are:
#     2 = Quarantine
#     3 = Remove
#     6 = Ignore
Specify threats upon which default action should not be taken when detected:
  lgpo.set:
  - name: Threats_ThreatIdDefaultAction
  - setting:
      Threats_ThreatIdDefaultActionList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
