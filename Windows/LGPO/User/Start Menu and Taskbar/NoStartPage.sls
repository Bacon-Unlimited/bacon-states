# windows:SUPPORTED_WindowsVistaToXP
#
# This setting affects the presentation of the Start menu.
# 
# The classic Start menu in Windows 2000 Professional allows users to begin common tasks, while the new Start menu consolidates common items onto one menu. When the classic Start menu is used, the following icons are placed on the desktop: Documents, Pictures, Music, Computer, and Network. The new Start menu starts them directly.
# 
# If you enable this setting, the Start menu displays the classic Start menu in the Windows 2000 style and displays the standard desktop icons.
# 
# If you disable this setting, the Start menu only displays in the new style, meaning the desktop icons are now on the Start page.
# 
# If you do not configure this setting, the default is the new style, and the user can change the view.
Force classic Start Menu:
  lgpo.set:
  - name: NoStartPage
  - setting: Enabled
  - policy_class: User
