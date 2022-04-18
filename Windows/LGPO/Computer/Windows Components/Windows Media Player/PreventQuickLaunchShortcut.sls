# SUPPORTED_WMP9
#
# This policy setting allows you to prevent a shortcut for the Player from being added to the Quick Launch bar.
# 
# If you enable this policy setting, the user cannot add the shortcut for the Player to the Quick Launch bar.
# 
# If you disable or do not configure this policy setting, the user can choose whether to add the shortcut for the Player to the Quick Launch bar.
Prevent Quick Launch Toolbar Shortcut Creation:
  lgpo.set:
  - name: PreventQuickLaunchShortcut
  - setting: Enabled
  - policy_class: Machine
