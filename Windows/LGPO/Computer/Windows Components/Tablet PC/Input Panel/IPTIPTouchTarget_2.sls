# windows:SUPPORTED_Windows7ToVista
#
# Prevents the Tablet PC Input Panel icon from appearing next to any text entry area in applications where this behavior is available. This policy applies only when a user is using touch input.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, Input Panel will never appear next to any text entry area when a user is using touch input. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, Input Panel will appear next to text entry areas in applications where this behavior is available. Users will be able to configure this setting on the Opening tab in Input Panel Options.
"For touch input, don\u2019t show the Input Panel icon":
  lgpo.set:
  - name: IPTIPTouchTarget_2
  - setting: Enabled
  - policy_class: Machine
