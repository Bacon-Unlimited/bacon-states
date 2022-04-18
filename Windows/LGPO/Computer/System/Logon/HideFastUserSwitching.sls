# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to hide the Switch User interface in the Logon UI, the Start menu and the Task Manager.
# 
# If you enable this policy setting, the Switch User interface is hidden from the user who is attempting to log on or is logged on to the computer that has this policy applied. 
# 
# The locations that Switch User interface appear are in the Logon UI, the Start menu and the Task Manager.
# 
# If you disable or do not configure this policy setting, the Switch User interface is accessible to the user in the three locations.
Hide entry points for Fast User Switching:
  lgpo.set:
  - name: HideFastUserSwitching
  - setting: Enabled
  - policy_class: Machine
