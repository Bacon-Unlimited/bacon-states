# windows:SUPPORTED_Windows7
#
# This policy setting enables a notification in the system tray that appears when the User Experience Virtualization (UE-V) Agent runs for the first time.
# By default, a notification informs users that Company Settings Center, the user-facing name for the UE-V Agent, now helps to synchronize settings between their work computers.
# With this setting enabled, the notification appears the first time that the UE-V Agent runs.
# With this setting disabled, no notification appears.
# If you do not configure this policy setting, any defined values are deleted.
#       
First Use Notification:
  lgpo.set:
  - name: FirstUseNotificationEnabled
  - setting: Enabled
  - policy_class: Machine
