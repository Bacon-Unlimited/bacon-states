# windows:SUPPORTED_WindowsNET
#
# Turn off Windows Key hotkeys.
# 
# Keyboards with a Windows key provide users with shortcuts to common shell features. For example, pressing the keyboard sequence Windows+R opens the Run dialog box; pressing Windows+E starts File Explorer. By using this setting, you can disable these Windows Key hotkeys.
# 
# If you enable this setting, the Windows Key hotkeys are unavailable.
# 
# If you disable or do not configure this setting, the Windows Key hotkeys are available.
Turn off Windows Key hotkeys:
  lgpo.set:
  - name: NoWindowsHotKeys
  - setting: Enabled
  - policy_class: User
