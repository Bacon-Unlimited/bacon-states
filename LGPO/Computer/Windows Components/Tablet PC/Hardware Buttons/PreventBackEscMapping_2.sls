# windows:SUPPORTED_WindowsVista
#
# Removes the Back->ESC mapping that normally occurs when menus are visible, and for applications that subscribe to this behavior.
# 
# If you enable this policy, a button assigned to Back will not map to ESC.
# 
# If you disable this policy, Back->ESC mapping will occur.
# 
# If you do not configure this policy, Back->ESC mapping will occur.
Prevent Back-ESC mapping:
  lgpo.set:
  - name: PreventBackEscMapping_2
  - setting: Enabled
  - policy_class: Machine
