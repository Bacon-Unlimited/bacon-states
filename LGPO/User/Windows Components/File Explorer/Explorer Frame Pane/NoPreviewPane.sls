# windows:SUPPORTED_WindowsVista
#
# This policy setting shows or hides the Details Pane in File Explorer.
# 
# If you enable this policy setting and configure it to hide the pane, the Details Pane in File Explorer is hidden and cannot be turned on by the user.
# 
# If you enable this policy setting and configure it to show the pane, the Details Pane is always visible and cannot be hidden by the user. Note: This has a side effect of not being able to toggle to the Preview Pane since the two cannot be displayed at the same time.
# 
# If you disable, or do not configure this policy setting, the Details Pane is hidden by default and can be displayed by the user. This is the default policy setting.
# 
Turn on or off details pane:
  lgpo.set:
  - name: NoPreviewPane
  - setting:
      PreviewPane_Dropdownlist_Box: enum-placeholder
  - policy_class: User
