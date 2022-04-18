# windows:SUPPORTED_WindowsVistaOnly
#
# Windows Calendar is a feature that allows users to manage appointments and tasks by creating personal calendars, publishing them, and subscribing to other users calendars.
# 
# If you enable this setting, Windows Calendar will be turned off.
# 
# If you disable or do not configure this setting, Windows Calendar will be turned on.
# 
# The default is for Windows Calendar to be turned on.
Turn off Windows Calendar:
  lgpo.set:
  - name: TurnOffWinCal_1
  - setting: Enabled
  - policy_class: User
