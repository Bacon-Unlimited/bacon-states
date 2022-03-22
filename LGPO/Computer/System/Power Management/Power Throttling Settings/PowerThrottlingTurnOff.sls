# windows:SUPPORTED_Windows_10_0_NOSERVER
#
# This policy setting allows you to turn off Power Throttling.
# 
# If you enable this policy setting, Power Throttling will be turned off.
# 
# If you disable or do not configure this policy setting, users control this setting.
Turn off Power Throttling:
  lgpo.set:
  - name: PowerThrottlingTurnOff
  - setting: Enabled
  - policy_class: Machine
