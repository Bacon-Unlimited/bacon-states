# windows:SUPPORTED_Windows7ToVista
#
# Turn off Tablet PC touch input
# 
# Turns off touch input, which allows the user to interact with their computer using their finger.
# 
# If you enable this setting, the user will not be able to produce input with touch. They will not be able to use touch input or touch gestures such as tap and double tap, the touch pointer, and other touch-specific features.
# 
# If you disable this setting, the user can produce input with touch, by using gestures, the touch pointer, and other-touch specific features.
# 
# If you do not configure this setting, touch input is on by default.
# 
# Note: Changes to this setting will not take effect until the user logs off.
Turn off Tablet PC touch input:
  lgpo.set:
  - name: TouchInputOff_1
  - setting: Enabled
  - policy_class: User
