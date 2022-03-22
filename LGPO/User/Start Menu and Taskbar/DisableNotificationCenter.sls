# windows:SUPPORTED_Windows_10_0
#
# This policy setting removes Notifications and Action Center from the notification area on the taskbar.
# 
# The notification area is located at the far right end of the taskbar and includes icons for current notifications and the system clock.  
# 
# If this setting is enabled, Notifications and Action Center is not displayed in the notification area. The user will be able to read notifications when they appear, but they won’t be able to review any notifications they miss. 
# 
# If you disable or do not configure this policy setting, Notification and Security and Maintenance will be displayed on the taskbar. 
# 
# A reboot is required for this policy setting to take effect.
Remove Notifications and Action Center:
  lgpo.set:
  - name: DisableNotificationCenter
  - setting: Enabled
  - policy_class: User
