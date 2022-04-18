# windows:SUPPORTED_WindowsPreVista
#
# Disables the "Hide keyboard navigation indicators until I use the ALT key" option in Display in Control Panel.
# 
# When this Display Properties option is selected, the underlining that indicates a keyboard shortcut character (hot key) does not appear on menus until you press ALT.
# 
# Effects, such as transitory underlines, are designed to enhance the user's experience but might be confusing or distracting to some users.
Remove UI to change keyboard navigation indicator setting:
  lgpo.set:
  - name: NoChangeKeyboardNavigationIndicators
  - setting: Enabled
  - policy_class: User
