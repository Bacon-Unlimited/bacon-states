# windows:SUPPORTED_WindowsVista
#
# This policy setting specifies the percentage of battery capacity remaining that triggers the low battery notification action.
# 
# If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the low notification.
# 
# To set the action that is triggered, see the "Low Battery Notification Action" policy setting.
# 
# If you disable this policy setting or do not configure it, users control this setting.
Low battery notification level:
  lgpo.set:
  - name: DCBatteryDischargeLevel1_2
  - setting:
      EnterDCBatteryDischargeLevel1: decimal-placeholder
  - policy_class: Machine
