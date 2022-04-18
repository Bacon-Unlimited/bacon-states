# windows:SUPPORTED_Windows7ToVista
#
# If you enable this setting, the Run command is added to the Start menu.  If you disable or do not configure this setting, the Run command is not visible on the Start menu by default, but it can be added from the Taskbar and Start menu properties. If the Remove Run link from Start Menu policy is set, the Add the Run command to the Start menu policy has no effect.
Add the Run command to the Start Menu:
  lgpo.set:
  - name: ShowRunInStartMenu
  - setting: Enabled
  - policy_class: User
