# windows:SUPPORTED_Windows8
#
# This policy setting allows you to prevent app notifications from appearing on the lock screen.
# 
# If you enable this policy setting, no app notifications are displayed on the lock screen.
# 
# If you disable or do not configure this policy setting, users can choose which apps display notifications on the lock screen.
Turn off app notifications on the lock screen:
  lgpo.set:
  - name: DisableLockScreenAppNotifications
  - setting: Enabled
  - policy_class: Machine
