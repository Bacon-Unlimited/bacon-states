# windows:SUPPORTED_WindowsVista
#
# Hides the Preview Pane in File Explorer.
# 
# If you enable this policy setting, the Preview Pane in File Explorer is hidden and cannot be turned on by the user.
# 
# If you disable, or do not configure this setting, the Preview Pane is hidden by default and can be displayed by the user.
# 
Turn off Preview Pane:
  lgpo.set:
  - name: NoReadingPane
  - setting: Enabled
  - policy_class: User
