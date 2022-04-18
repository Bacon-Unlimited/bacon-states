# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to lock all taskbar settings.
# 
# If you enable this policy setting, the user cannot access the taskbar control panel. The user is also unable to resize, move or rearrange toolbars on their taskbar.
# 
# If you disable or do not configure this policy setting, the user will be able to set any taskbar setting that is not prevented by another policy setting.
Lock all taskbar settings:
  lgpo.set:
  - name: TaskbarLockAll
  - setting: Enabled
  - policy_class: User
