# windows:SUPPORTED_WindowsXP
#
# This setting disables the theme gallery in the Personalization Control Panel.
# 
# If you enable this setting, users cannot change or save a theme.  Elements of a theme such as the desktop background, color, sounds, and screen saver can still be changed (unless policies are set to turn them off).
# 
# If you disable or do not configure this setting, there is no effect.
# 
# Note: If you enable this setting but do not specify a theme using the "load a specific theme" setting, the theme defaults to whatever the user previously set or the system default.
Prevent changing theme:
  lgpo.set:
  - name: CPL_Personalization_DisableThemeChange
  - setting: Enabled
  - policy_class: User
