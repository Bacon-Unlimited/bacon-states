# windows:SUPPORTED_Windows7ToXP
#
# If you enable this setting, the "Undock PC" button is removed from the simple Start Menu, and your PC cannot be undocked.
# 
# If you disable this setting or do not configure it, the "Undock PC" button remains on the simple Start menu, and your PC can be undocked.
Remove the "Undock PC" button from the Start Menu:
  lgpo.set:
  - name: RemoveUnDockPCButton
  - setting: Enabled
  - policy_class: User
