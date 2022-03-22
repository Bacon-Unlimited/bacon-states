# windows:SUPPORTED_WindowsPreVista
#
# Determines how long the first reminder balloon for a network status change is displayed.
# 
# Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the duration of the first reminder.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
Initial reminder balloon lifetime:
  lgpo.set:
  - name: Pol_ReminderInitTimeout_1
  - setting:
      Lbl_ReminderInitTimeoutSpin: decimal-placeholder
  - policy_class: User
