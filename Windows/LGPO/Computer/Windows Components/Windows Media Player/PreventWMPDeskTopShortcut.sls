# SUPPORTED_WMP9
#
# This policy setting allows you to prevent a shortcut icon for the Player from being added to the user's desktop.
# 
# If you enable this policy setting, users cannot add the Player shortcut icon to their desktops.
# 
# If you disable or do not configure this policy setting, users can choose whether to add the Player shortcut icon to their desktops.
Prevent Desktop Shortcut Creation:
  lgpo.set:
  - name: PreventWMPDeskTopShortcut
  - setting: Enabled
  - policy_class: Machine
