# windows:SUPPORTED_WindowsPreVista
#
# Determines how long updated reminder balloons are displayed.
# 
# Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the update reminder.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Reminder balloon lifetime:
  lgpo.set:
  - name: Pol_ReminderTimeout_2
  - setting:
      Lbl_ReminderTimeoutSpin: decimal-placeholder
  - policy_class: Machine
