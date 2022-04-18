# windows:SUPPORTED_WindowsVista
#
# This policy setting allows you to prevent users from moving taskbar to another screen dock location.
# 
# If you enable this policy setting, users are not able to drag their taskbar to another area of the monitor(s).
# 
# If you disable or do not configure this policy setting, users are able to drag their taskbar to another area of the monitor unless prevented by another policy setting.
Prevent users from moving taskbar to another screen dock location:
  lgpo.set:
  - name: TaskbarNoRedock
  - setting: Enabled
  - policy_class: User
