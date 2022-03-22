# windows:SUPPORTED_Windows7
#
# If you enable this policy, the "Internet" "Search again" link will not be shown when the user performs a search in the Explorer window.
# 
# If you disable this policy, there will be an "Internet" "Search again" link when the user performs a search in the Explorer window.  This button launches a search in the default browser with the search terms.
# 
# If you do not configure this policy (default), there will be an "Internet" link when the user performs a search in the Explorer window.
Remove the Search the Internet "Search again" link:
  lgpo.set:
  - name: NoSearchInternetTryHarderButton
  - setting: Enabled
  - policy_class: User
