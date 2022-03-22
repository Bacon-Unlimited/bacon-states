# windows:SUPPORTED_WindowsVistaOrServer2008Only
#
# If you enable this policy the start menu search box will not search for internet history or favorites.
# 
# If you disable or do not configure this policy, the start menu will search for for internet history or favorites, unless the user chooses not to in the start menu control panel.
Do not search Internet:
  lgpo.set:
  - name: NoSearchInternetInStartMenu
  - setting: Enabled
  - policy_class: User
