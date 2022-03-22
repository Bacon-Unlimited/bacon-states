# windows:SUPPORTED_WindowsVistaTo2k
#
# Disables personalized menus.
# 
# Windows personalizes long menus by moving recently used items to the top of the menu and hiding items that have not been used recently. Users can display the hidden items by clicking an arrow to extend the menu.
# 
# If you enable this setting, the system does not personalize menus. All menu items appear and remain in standard order. Also, this setting removes the "Use Personalized Menus" option so users do not try to change the setting while a setting is in effect.
# 
# Note: Personalized menus require user tracking. If you enable the "Turn off user tracking" setting, the system disables user tracking and personalized menus and ignores this setting.
# 
# Tip: To Turn off personalized menus without specifying a setting, click Start, click Settings, click Taskbar and Start Menu, and then, on the General tab, clear the "Use Personalized Menus" option.
Turn off personalized menus:
  lgpo.set:
  - name: Intellimenus
  - setting: Enabled
  - policy_class: User
