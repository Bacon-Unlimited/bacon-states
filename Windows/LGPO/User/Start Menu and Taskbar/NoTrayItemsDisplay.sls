# windows:SUPPORTED_WindowsXP
#
# This setting affects the notification area (previously called the "system tray") on the taskbar.
# 
# Description: The notification area is located at the far right end of the task bar and includes the icons for current notifications and the system clock.
# 
# If this setting is enabled, the users entire notification area, including the notification icons, is hidden. The taskbar displays only the Start button, taskbar buttons, custom toolbars (if any), and the system clock.
# 
# If this setting is disabled or is not configured, the notification area is shown in the user's taskbar.
# 
# Note: Enabling this setting overrides the "Turn off notification area cleanup" setting, because if the notification area is hidden, there is no need to clean up the icons.
Hide the notification area:
  lgpo.set:
  - name: NoTrayItemsDisplay
  - setting: Enabled
  - policy_class: User
