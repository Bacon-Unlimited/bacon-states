# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent users from rearranging toolbars.
# 
# If you enable this policy setting, users are not able to drag or drop toolbars to the taskbar.
# 
# If you disable or do not configure this policy setting, users are able to rearrange the toolbars on the taskbar.
Prevent users from rearranging toolbars:
  lgpo.set:
  - name: TaskbarNoDragToolbar
  - setting: Enabled
  - policy_class: User
