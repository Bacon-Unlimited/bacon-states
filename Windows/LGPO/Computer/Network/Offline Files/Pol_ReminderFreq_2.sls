# windows:SUPPORTED_WindowsPreVista
#
# Determines how often reminder balloon updates appear.
# 
# If you enable this setting, you can select how often reminder balloons updates appear and also prevent users from changing this setting.
# 
# Reminder balloons appear when the user's connection to a network file is lost or reconnected, and they are updated periodically. By default, the first reminder for an event is displayed for 30 seconds. Then, updates appear every 60 minutes and are displayed for 15 seconds. You can use this setting to change the update interval.
# 
# This setting appears in the Computer Configuration and User Configuration folders. If both settings are configured, the setting in Computer Configuration takes precedence over the setting in User Configuration.
# 
# Tip: To set reminder balloon frequency without establishing a setting, in Windows Explorer, on the Tools menu, click Folder Options, and then click the Offline Files tab. This setting corresponds to the "Display reminder balloons every ... minutes" option.
Reminder balloon frequency:
  lgpo.set:
  - name: Pol_ReminderFreq_2
  - setting:
      Lbl_ReminderFreqSpin: decimal-placeholder
  - policy_class: Machine
