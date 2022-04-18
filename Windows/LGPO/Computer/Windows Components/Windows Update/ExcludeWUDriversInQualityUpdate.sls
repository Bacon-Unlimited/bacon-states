# windows:SUPPORTED_Windows_10_0_NOARM
#
# Enable this policy to not include drivers with Windows quality updates.
# 
# If you disable or do not configure this policy, Windows Update will include updates that have a Driver classification.
Do not include drivers with Windows Updates:
  lgpo.set:
  - name: ExcludeWUDriversInQualityUpdate
  - setting: Enabled
  - policy_class: Machine
