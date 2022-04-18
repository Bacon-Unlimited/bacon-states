# windows:SUPPORTED_Windows_6_3only
#
# This policy setting allows the Start screen to appear on the display the user is using when they press the Windows logo key. This setting only applies to users who are using multiple displays.
# 
# If you enable this policy setting, the Start screen will appear on the display the user is using when they press the Windows logo key.
# 
# If you disable or don't configure this policy setting, the Start screen will always appear on the main display when the user presses the Windows logo key. Users will still be able to open Start on other displays by pressing the Start button on that display. Also, the user will be able to configure this setting.
Show Start on the display the user is using when they press the Windows logo key:
  lgpo.set:
  - name: ShowStartOnDisplayWithForegroundOnWinKey
  - setting: Enabled
  - policy_class: User
