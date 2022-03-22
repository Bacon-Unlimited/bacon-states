# windows:SUPPORTED_WindowsPreVista
#
# This policy setting allows you to prevent users from enabling or disabling minor animations in the operating system for the movement of windows, menus, and lists.
# 
# If you enable this policy setting, the "Use transition effects for menus and tooltips" option in Display in Control Panel is disabled, and cannot be toggled by users.
# 
# Effects, such as animation, are designed to enhance the user's experience but might be confusing or distracting to some users.
# 
# If you disable or do not configure this policy setting, users are allowed to turn on or off these minor system animations using the "Use transition effects for menus and tooltips" option in Display in Control Panel.
Remove UI to change menu animation setting:
  lgpo.set:
  - name: NoChangeAnimation
  - setting: Enabled
  - policy_class: User
