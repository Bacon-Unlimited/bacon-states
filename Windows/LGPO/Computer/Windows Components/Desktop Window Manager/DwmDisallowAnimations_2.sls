# windows:SUPPORTED_WindowsVista
#
# This policy setting controls the appearance of window animations such as those found when restoring, minimizing, and maximizing windows. 
# 
# If you enable this policy setting, window animations are turned off. 
# 
# If you disable or do not configure this policy setting, window animations are turned on. 
# 
# Changing this policy setting requires a logoff for it to be applied.
Do not allow window animations:
  lgpo.set:
  - name: DwmDisallowAnimations_2
  - setting: Enabled
  - policy_class: Machine
