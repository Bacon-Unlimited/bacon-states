# windows:SUPPORTED_WindowsXP
#
# This setting affects the taskbar, which is used to switch between running applications.
# 
# The taskbar includes the Start button, list of currently running tasks, and the notification area. By default, the taskbar is located at the bottom of the screen, but it can be dragged to any side of the screen. When it is locked, it cannot be moved or resized.
# 
# If you enable this setting, it prevents the user from moving or resizing the taskbar. While the taskbar is locked, auto-hide and other taskbar options are still available in Taskbar properties.
# 
# If you disable this setting or do not configure it, the user can configure the taskbar position.
# 
# Note: Enabling this setting also locks the QuickLaunch bar and any other toolbars that the user has on their taskbar. The toolbar's position is locked, and the user cannot show and hide various toolbars using the taskbar context menu.
Lock the Taskbar:
  lgpo.set:
  - name: LockTaskbar
  - setting: Enabled
  - policy_class: User