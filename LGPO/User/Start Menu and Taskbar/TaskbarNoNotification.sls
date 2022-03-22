# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to turn off all notification balloons.
# 
# If you enable this policy setting, no notification balloons are shown to the user.
# 
# If you disable or do not configure this policy setting, notification balloons are shown to the user.
Turn off all balloon notifications:
  lgpo.set:
  - name: TaskbarNoNotification
  - setting: Enabled
  - policy_class: User
