# windows:SUPPORTED_WindowsXP
#
# Prevents the clock in the system notification area from being displayed.
# 
# If you enable this setting, the clock will not be displayed in the system notification area.
# 
# If you disable or do not configure this setting, the default behavior of the clock appearing in the notification area will occur.
Remove Clock from the system notification area:
  lgpo.set:
  - name: NoTaskBarClock
  - setting: Enabled
  - policy_class: User
