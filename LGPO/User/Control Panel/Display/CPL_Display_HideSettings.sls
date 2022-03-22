# windows:SUPPORTED_WindowsPreVista
#
# Removes the Settings tab from Display in Control Panel.
# 
# This setting prevents users from using Control Panel to add, configure, or change the display settings on the computer.
Hide Settings tab:
  lgpo.set:
  - name: CPL_Display_HideSettings
  - setting: Enabled
  - policy_class: User
