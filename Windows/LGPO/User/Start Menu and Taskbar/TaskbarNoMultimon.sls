# windows:SUPPORTED_Windows8
#
# This policy setting allows you to prevent taskbars from being displayed on more than one monitor.
# 
# If you enable this policy setting, users are not able to show taskbars on more than one display. The multiple display section is not enabled in the taskbar properties dialog.
# 
# If you disable or do not configure this policy setting, users can show taskbars on more than one display.
Do not allow taskbars on more than one display:
  lgpo.set:
  - name: TaskbarNoMultimon
  - setting: Enabled
  - policy_class: User
