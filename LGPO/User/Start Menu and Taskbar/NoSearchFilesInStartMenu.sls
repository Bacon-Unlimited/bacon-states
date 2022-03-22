# windows:SUPPORTED_Windows7ToVista
#
# If you enable this policy setting the Start menu search box will not search for files.
# 
# If you disable or do not configure this policy setting, the Start menu will search for files, unless the user chooses not to do so directly in Control Panel.  If you enable this policy, a "See more results" / "Search Everywhere" link will not be shown when the user performs a search in the start menu search box.
Do not search for files:
  lgpo.set:
  - name: NoSearchFilesInStartMenu
  - setting: Enabled
  - policy_class: User
