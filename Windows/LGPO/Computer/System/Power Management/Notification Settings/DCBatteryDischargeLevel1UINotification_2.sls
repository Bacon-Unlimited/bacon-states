# windows:SUPPORTED_WindowsVista
#
# This policy setting turns off the user notification when the battery capacity remaining equals the low battery notification level.
# 
# If you enable this policy setting, Windows shows a notification when the battery capacity remaining equals the low battery notification level.  To configure the low battery notification level, see the "Low Battery Notification Level" policy setting.
# 
# The notification will only be shown if the "Low Battery Notification Action" policy setting is configured to "No Action".
# 
# If you disable or do not configure this policy setting, users can control this setting.
Turn off low battery user notification:
  lgpo.set:
  - name: DCBatteryDischargeLevel1UINotification_2
  - setting: Enabled
  - policy_class: Machine
