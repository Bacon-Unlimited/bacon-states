# windows:SUPPORTED_Windows7
#
# Prevents windows from being minimized or restored when the active window is shaken back and forth with the mouse.
#       
# If you enable this policy, application windows will not be minimized or restored when the active window is shaken back and forth with the mouse.
# 
# If you disable or do not configure this policy, this window minimizing and restoring gesture will apply.
Turn off Aero Shake window minimizing mouse gesture:
  lgpo.set:
  - name: NoWindowMinimizingShortcuts
  - setting: Enabled
  - policy_class: User
