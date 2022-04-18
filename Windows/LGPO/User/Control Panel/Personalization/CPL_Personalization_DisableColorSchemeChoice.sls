# windows:SUPPORTED_WindowsVistaToXP
#
# This setting forces the theme color scheme to be the default color scheme.
# 
# If you enable this setting, a user cannot change the color scheme of the current desktop theme.
# 
# If you disable or do not configure this setting, a user may change the color scheme of the current desktop theme.
# 
# For Windows 7 and later, use the "Prevent changing color and appearance" setting.
Prevent changing color scheme:
  lgpo.set:
  - name: CPL_Personalization_DisableColorSchemeChoice
  - setting: Enabled
  - policy_class: User
