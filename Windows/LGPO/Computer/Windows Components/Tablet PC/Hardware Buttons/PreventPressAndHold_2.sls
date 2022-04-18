# windows:SUPPORTED_WindowsVista
#
# Prevents press and hold actions on hardware buttons, so that only one action is available per button.
# 
# If you enable this policy, press and hold actions are unavailable, and the button configuration dialog will display the following text:  "Some settings are controlled by Group Policy. If a setting is unavailable, contact your system administrator."
# 
# If you disable this policy, press and hold actions for buttons will be available.
# 
# If you do not configure this policy, press and hold actions will be available.
Prevent press and hold:
  lgpo.set:
  - name: PreventPressAndHold_2
  - setting: Enabled
  - policy_class: Machine
