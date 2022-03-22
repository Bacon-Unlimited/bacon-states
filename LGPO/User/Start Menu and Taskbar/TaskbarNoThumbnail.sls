# windows:SUPPORTED_WindowsVistaOnly
#
# This policy setting allows you to turn off taskbar thumbnails.
# 
# If you enable this policy setting, the taskbar thumbnails are not displayed and the system uses standard text for the tooltips.
# 
# If you disable or do not configure this policy setting, the taskbar thumbnails are displayed.
Turn off taskbar thumbnails:
  lgpo.set:
  - name: TaskbarNoThumbnail
  - setting: Enabled
  - policy_class: User
