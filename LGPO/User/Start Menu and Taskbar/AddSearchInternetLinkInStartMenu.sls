# windows:SUPPORTED_Windows7Only
#
# 
# If you enable this policy, a "Search the Internet" link is shown when the user performs a search in the start menu search box.  This button launches the default browser with the search terms.
# 
# If you disable this policy, there will not be a "Search the Internet" link when the user performs a search in the start menu search box.
#           
# If you do not configure this policy (default), there will not be a "Search the Internet" link on the start menu.
Add Search Internet link to Start Menu:
  lgpo.set:
  - name: AddSearchInternetLinkInStartMenu
  - setting: Enabled
  - policy_class: User
