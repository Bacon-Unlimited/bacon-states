# windows:SUPPORTED_Windows7ToVista
#
# Turns off the integration of application auto complete lists with Tablet PC Input Panel in applications where this behavior is available.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, application auto complete lists will never appear next to Input Panel. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will be able to configure this setting on the Text completion tab in Input Panel Options.
Turn off AutoComplete integration with Input Panel:
  lgpo.set:
  - name: AutoComplete_1
  - setting: Enabled
  - policy_class: User
