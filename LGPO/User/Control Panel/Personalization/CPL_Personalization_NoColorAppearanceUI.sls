# windows:SUPPORTED_Win2k
#
# Disables the Color (or Window Color) page in the Personalization Control Panel, or the Color Scheme dialog in the Display Control Panel on systems where the Personalization feature is not available.
# 
# This setting prevents users from using Control Panel to change the window border and taskbar color (on Windows 8), glass color (on Windows Vista and Windows 7), system colors, or color scheme of the desktop and windows.
# 
# If this setting is disabled or not configured, the Color (or Window Color) page or Color Scheme dialog is available in the Personalization or Display Control Panel.
# 
# For systems prior to Windows Vista, this setting hides the Appearance and Themes tabs in the in Display in Control Panel.
Prevent changing color and appearance:
  lgpo.set:
  - name: CPL_Personalization_NoColorAppearanceUI
  - setting: Enabled
  - policy_class: User
