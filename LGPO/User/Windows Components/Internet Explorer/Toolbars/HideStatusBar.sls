# SUPPORTED_IE8
#
# This policy setting allows you to show or hide the status bar.
# 
# If you enable this policy setting, the status bar is hidden and the user cannot choose to show it.
# 
# If you disable this policy setting, the status bar is shown and the user cannot choose to hide it.
# 
# If you do not configure this policy setting, the status bar is shown by default, and the user can choose to hide it.
Hide the status bar:
  lgpo.set:
  - name: HideStatusBar
  - setting: Enabled
  - policy_class: User
