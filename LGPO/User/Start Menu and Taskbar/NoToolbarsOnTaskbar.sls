# windows:SUPPORTED_WindowsXP
#
# This setting affects the taskbar.
# 
# The taskbar includes the Start button, buttons for currently running tasks, custom toolbars, the notification area, and the system clock. Toolbars include Quick Launch, Address, Links, Desktop, and other custom toolbars created by the user or by an application.
# 
# If this setting is enabled, the taskbar does not display any custom toolbars, and the user cannot add any custom toolbars to the taskbar. Moreover, the "Toolbars" menu command and submenu are removed from the context menu. The taskbar displays only the Start button, taskbar buttons, the notification area, and the system clock.
# 
# If this setting is disabled or is not configured, the taskbar displays all toolbars. Users can add or remove custom toolbars, and the "Toolbars" command appears in the context menu.
Do not display any custom toolbars in the taskbar:
  lgpo.set:
  - name: NoToolbarsOnTaskbar
  - setting: Enabled
  - policy_class: User
