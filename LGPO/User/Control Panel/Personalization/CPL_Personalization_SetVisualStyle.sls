# windows:SUPPORTED_WindowsXP
#
# This setting allows you to force a specific visual style file by entering the path (location) of the visual style file.
# 
# This can be a local computer visual style (aero.msstyles), or a file located on a remote server using a UNC path (\\Server\Share\aero.msstyles).
# 
# If you enable this setting, the visual style file that you specify will be used. Also, a user may not apply a different visual style when changing themes.
# 
# If you disable or do not configure this setting, the users can select the visual style that they want to use by changing themes (if the Personalization Control Panel is available).
# 
# Note: If this setting is enabled and the file is not available at user logon, the default visual style is loaded.
# 
# Note: When running Windows XP, you can select the Luna visual style by typing %windir%\resources\Themes\Luna\Luna.msstyles
# 
# Note: To select the Windows Classic visual style, leave the box blank beside "Path to Visual Style:" and enable this setting. When running Windows 8 or Windows RT, you cannot apply the Windows Classic visual style.
Force a specific visual style file or force Windows Classic:
  lgpo.set:
  - name: CPL_Personalization_SetVisualStyle
  - setting:
      Themes_Name: text-placeholder
  - policy_class: User
