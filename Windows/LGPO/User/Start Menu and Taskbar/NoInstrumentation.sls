# windows:SUPPORTED_WindowsVistaTo2k
#
# This policy setting allows you to turn off user tracking.
# 
# If you enable this policy setting, the system does not track the programs that the user runs, and does not display frequently used programs in the Start Menu.
# 
# If you disable or do not configure this policy setting, the system tracks the programs that the user runs. The system uses this information to customize Windows features, such as showing frequently used programs in the Start Menu.
# 
# Also, see these related policy settings: "Remove frequent programs liist from the Start Menu" and "Turn off personalized menus".
# 
# This policy  setting does not prevent users from pinning programs to the Start Menu or Taskbar. See the "Remove pinned programs list from the Start Menu" and "Do not allow pinning programs to the Taskbar" policy settings.
Turn off user tracking:
  lgpo.set:
  - name: NoInstrumentation
  - setting: Enabled
  - policy_class: User
