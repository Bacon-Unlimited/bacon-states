# windows:SUPPORTED_WindowsVista
#
# This policy setting configures File Explorer to always display the menu bar.
# 
# Note: By default, the menu bar is not displayed in File Explorer.
# 
# If you enable this policy setting, the menu bar will be displayed in File Explorer.
# 
# If you disable or do not configure this policy setting, the menu bar will not be displayed in File Explorer.
# 
# Note: When the menu bar is not displayed, users can access the menu bar by pressing the 'ALT' key.
'Display the menu bar in File Explorer ':
  lgpo.set:
  - name: AlwaysShowClassicMenu
  - setting: Enabled
  - policy_class: User
