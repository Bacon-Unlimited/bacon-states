# windows:SUPPORTED_Windows7
#
# This policy setting allows you to turn off the display of snippets in Content view mode.
# 
# If you enable this policy setting, File Explorer will not display snippets in Content view mode.
# 
# If you disable or do not configure this policy setting, File Explorer shows snippets in Content view mode by default.
Turn off the display of snippets in Content view mode:
  lgpo.set:
  - name: HideContentViewModeSnippets
  - setting: Enabled
  - policy_class: User
