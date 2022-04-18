# windows:SUPPORTED_Win2k
#
# Disables the Display Control Panel.
# 
# If you enable this setting, the Display Control Panel does not run. When users try to start Display, a message appears explaining that a setting prevents the action.
# 
# Also, see the "Prohibit access to the Control Panel" (User Configuration\Administrative Templates\Control Panel) and "Remove programs on Settings menu" (User Configuration\Administrative Templates\Start Menu & Taskbar) settings.
Disable the Display Control Panel:
  lgpo.set:
  - name: CPL_Display_Disable
  - setting: Enabled
  - policy_class: User
