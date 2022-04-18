# windows:SUPPORTED_Windows7
#
# Specifies which theme file is applied to the computer the first time a user logs on.
# 
# If you enable this setting, the theme that you specify will be applied when a new user logs on for the first time.  This policy does not prevent the user from changing the theme or any of the theme elements such as the desktop background, color, sounds, or screen saver after the first logon.
# 
# If you disable or do not configure this setting, the default theme will be applied at the first logon.
Load a specific theme:
  lgpo.set:
  - name: CPL_Personalization_SetTheme
  - setting:
      ThemeFilename: text-placeholder
  - policy_class: User
