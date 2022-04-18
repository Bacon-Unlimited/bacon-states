# windows:SUPPORTED_WindowsXP
#
# This setting affects the notification area, also called the "system tray."
# 
# The notification area is located in the task bar, generally at the bottom of the screen, and it includes the clock and current notifications. This setting determines whether the items are always expanded or always collapsed. By default, notifications are collapsed. The notification cleanup << icon can be referred to as the "notification chevron."
# 
# If you enable this setting, the system notification area expands to show all of the notifications that use this area.
# 
# If you disable this setting, the system notification area will always collapse notifications.
# 
# If you do not configure it, the user can choose if they want notifications collapsed.
Turn off notification area cleanup:
  lgpo.set:
  - name: NoAutoTrayNotify
  - setting: Enabled
  - policy_class: User
