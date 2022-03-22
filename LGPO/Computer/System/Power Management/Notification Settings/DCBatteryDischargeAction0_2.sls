# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the action that Windows takes when battery capacity reaches the critical battery notification level.
# 
# If you enable this policy setting, select one of the following actions:
# -Take no action
# -Sleep
# -Hibernate
# -Shut down
# 
# If you disable or do not configure this policy setting, users control this setting.
Critical battery notification action:
  lgpo.set:
  - name: DCBatteryDischargeAction0_2
  - setting:
      SelectDCBatteryDischargeAction0: enum-placeholder
  - policy_class: Machine
