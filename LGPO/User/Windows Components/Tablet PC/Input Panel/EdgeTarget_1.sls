# windows:SUPPORTED_Windows7ToVista
#
# Prevents Input Panel tab from appearing on the edge of the Tablet PC screen.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, Input Panel tab will not appear on the edge of the Tablet PC screen. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, Input Panel tab will appear on the edge of the Tablet PC screen. Users will be able to configure this setting on the Opening tab in Input Panel Options.
# 
# Caution: If you enable both the Prevent Input Panel from appearing next to text entry areas policy and the Prevent Input Panel tab from appearing policy, and disable the Show Input Panel taskbar icon policy, the user will then have no way to access Input Panel.
Prevent Input Panel tab from appearing:
  lgpo.set:
  - name: EdgeTarget_1
  - setting: Enabled
  - policy_class: User
