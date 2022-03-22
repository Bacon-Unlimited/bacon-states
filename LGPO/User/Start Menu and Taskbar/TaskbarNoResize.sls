# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent users from resizing the taskbar.
# 
# If you enable this policy setting, users are not be able to resize their taskbar.
# 
# If you disable or do not configure this policy setting, users are able to resize their taskbar unless prevented by another setting.
Prevent users from resizing the taskbar:
  lgpo.set:
  - name: TaskbarNoResize
  - setting: Enabled
  - policy_class: User
