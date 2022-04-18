# windows:SUPPORTED_Windows_10_0
#
# This policy setting allows you to specify battery charge level at which Energy Saver is turned on.
# 
# If you enable this policy setting, you must provide a percent value, indicating the battery charge level. Energy Saver will be automatically turned on at (and below) the specified level.
# 
# If you disable or do not configure this policy setting, users control this setting.
Energy Saver Battery Threshold (plugged in):
  lgpo.set:
  - name: EsBattThresholdAC
  - setting:
      EnterEsBattThreshold: decimal-placeholder
  - policy_class: Machine
