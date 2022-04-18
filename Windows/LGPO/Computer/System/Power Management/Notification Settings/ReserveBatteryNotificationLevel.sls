# windows:SUPPORTED_Windows7
#
# This policy setting specifies the percentage of battery capacity remaining that triggers the reserve power mode.
# 
# If you enable this policy setting, you must enter a numeric value (percentage) to set the battery level that triggers the reserve power notification.
# 
# If you disable or do not configure this policy setting, users can see and change this setting.
Reserve battery notification level:
  lgpo.set:
  - name: ReserveBatteryNotificationLevel
  - setting:
      EnterReserveBatteryNotificationLevel: decimal-placeholder
  - policy_class: Machine
