# windows:SUPPORTED_WindowsVista
#
# Turns off Tablet PC hardware buttons.
# 
# If you enable this policy, no actions will occur when the buttons are pressed, and the buttons tab in Tablet PC Control Panel will be removed.
# 
# If you disable this policy, user and OEM defined button actions will occur when the buttons are pressed.
# 
# If you do not configure this policy, user and OEM defined button actions will occur when the buttons are pressed.
Turn off hardware buttons:
  lgpo.set:
  - name: TurnOffButtons_2
  - setting: Enabled
  - policy_class: Machine
