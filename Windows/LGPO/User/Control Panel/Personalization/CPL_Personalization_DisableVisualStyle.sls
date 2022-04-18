# windows:SUPPORTED_WindowsXP
#
# Prevents users or applications from changing the visual style of the windows and buttons displayed on their screens.
# 
# When enabled on Windows XP, this setting disables the "Windows and buttons" drop-down list on the Appearance tab in Display Properties.
# 
# When enabled on Windows XP and later systems, this setting prevents users and applications from changing the visual style through the command line.  Also, a user may not apply a different visual style when changing themes.
Prevent changing visual style for windows and buttons:
  lgpo.set:
  - name: CPL_Personalization_DisableVisualStyle
  - setting: Enabled
  - policy_class: User
