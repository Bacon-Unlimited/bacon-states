# windows:SUPPORTED_WindowsPreVista
#
# Prevents users from changing the size of the font in the windows and buttons displayed on their screens.
# 
# If this setting is enabled, the "Font size" drop-down list on the Appearance tab in Display Properties is disabled. 
# 
# If you disable or do not configure this setting, a user may change the font size using the "Font size" drop-down list on the Appearance tab.
Prohibit selection of visual style font size:
  lgpo.set:
  - name: CPL_Personalization_LockFontSize
  - setting: Enabled
  - policy_class: User
