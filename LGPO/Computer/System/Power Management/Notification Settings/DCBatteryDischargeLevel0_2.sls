# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the percentage of battery capacity remaining that triggers the critical battery notification action.
# 
# If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the critical notification.
# 
# To set the action that is triggered, see the "Critical Battery Notification Action" policy setting.
# 
# If you disable this policy setting or do not configure it, users control this setting.
Critical battery notification level:
  lgpo.set:
  - name: DCBatteryDischargeLevel0_2
  - setting:
      EnterDCBatteryDischargeLevel0: decimal-placeholder
  - policy_class: Machine
