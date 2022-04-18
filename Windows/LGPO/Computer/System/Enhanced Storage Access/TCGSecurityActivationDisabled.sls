# windows:SUPPORTED_Windows7
#
# This policy setting configures whether or not Windows will activate an Enhanced Storage device.
# 
# If you enable this policy setting, Windows will not activate unactivated Enhanced Storage devices.
# 
# If you disable or do not configure this policy setting, Windows will activate unactivated Enhanced Storage devices.
Do not allow Windows to activate Enhanced Storage devices:
  lgpo.set:
  - name: TCGSecurityActivationDisabled
  - setting: Enabled
  - policy_class: Machine
