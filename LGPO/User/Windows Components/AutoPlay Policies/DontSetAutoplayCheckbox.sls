# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent AutoPlay from remembering user's choice of what to do when a device is connected.
# 
#           If you enable this policy setting, AutoPlay prompts the user to choose what to do when a device is connected.
# 
#           If you disable or do not configure this policy setting, AutoPlay  remembers user's choice of what to do when a device is connected.
Prevent AutoPlay from remembering user choices.:
  lgpo.set:
  - name: DontSetAutoplayCheckbox
  - setting: Enabled
  - policy_class: User
