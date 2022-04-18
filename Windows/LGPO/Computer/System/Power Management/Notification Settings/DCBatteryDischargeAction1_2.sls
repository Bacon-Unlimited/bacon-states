# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the action that Windows takes when battery capacity reaches the low battery notification level.
# 
# If you enable this policy setting, select one of the following actions:
# -Take no action
# -Sleep
# -Hibernate
# -Shut down
# 
# If you disable or do not configure this policy setting, users control this setting.
Low battery notification action:
  lgpo.set:
  - name: DCBatteryDischargeAction1_2
  - setting:
      SelectDCBatteryDischargeAction1: enum-placeholder
  - policy_class: Machine
