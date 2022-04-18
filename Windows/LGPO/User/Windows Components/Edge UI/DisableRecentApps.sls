# windows:SUPPORTED_Windows_6_3
#
# This policy setting allows you to prevent the last app and the list of recent apps from appearing when the mouse is pointing to the upper-left corner of the screen.
# 
# If you enable this policy setting, the user will no longer be able to switch to recent apps using the mouse.  The user will still be able to switch apps using touch gestures, keyboard shortcuts, and the Start screen.
# 
# If you disable or don't configure this policy setting, the recent apps will be available by default, and the user can configure this setting.
Do not show recent apps when the mouse is pointing to the upper-left corner of the screen:
  lgpo.set:
  - name: DisableRecentApps
  - setting: Enabled
  - policy_class: User
