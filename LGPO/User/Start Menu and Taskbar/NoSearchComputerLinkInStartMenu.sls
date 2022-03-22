# windows:SUPPORTED_WindowsVistaOnly
#
# If you enable this policy, the "See all results" link will not be shown when the user performs a search in the start menu search box.
# 
# If you disable or do not configure this policy, the "See all results" link will be shown when the user performs a search in the start menu search box.
Remove Search Computer link:
  lgpo.set:
  - name: NoSearchComputerLinkInStartMenu
  - setting: Enabled
  - policy_class: User
