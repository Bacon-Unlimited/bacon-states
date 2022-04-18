# windows:SUPPORTED_Windows8
#
# This policy setting allows you to customize which automatic remediation action will be taken for each threat alert level.Threat alert levels should be added under the Options for this setting. Each entry must be listed as a name value pair. The name defines a threat alert level. The value contains the action ID for the remediation action that should be taken.
# 
#     Valid threat alert levels are:
#     1 = Low
#     2 =  Medium
#     4 = High
#     5 = Severe
# 
#     Valid remediation action values are:
#     2 = Quarantine
#     3 = Remove
#     6 = Ignore
Specify threat alert levels at which default action should not be taken when detected:
  lgpo.set:
  - name: Threats_ThreatSeverityDefaultAction
  - setting:
      Threats_ThreatSeverityDefaultActionList:
      - placeholder1
      - placeholder2
  - policy_class: Machine
