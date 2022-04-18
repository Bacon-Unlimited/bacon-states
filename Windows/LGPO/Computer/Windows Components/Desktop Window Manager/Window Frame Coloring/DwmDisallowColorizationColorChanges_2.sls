# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the ability to change the color of window frames. 
# 
# If you enable this policy setting, you prevent users from changing the default window frame color. 
# 
# If you disable or do not configure this policy setting, you allow users to change the default window frame color. 
# 
# Note: This policy setting can be used in conjunction with the "Specify a default color for window frames" policy setting, to enforce a specific color for window frames that cannot be changed by users.
Do not allow color changes:
  lgpo.set:
  - name: DwmDisallowColorizationColorChanges_2
  - setting: Enabled
  - policy_class: Machine
