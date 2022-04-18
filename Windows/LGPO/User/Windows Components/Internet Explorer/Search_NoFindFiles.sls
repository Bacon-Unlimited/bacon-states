# SUPPORTED_IE5_6
#
# Disables using the F3 key to search in Internet Explorer and File Explorer.
# 
# If you enable this policy, the search functionality of the F3 key is disabled. Users cannot press F3 to search the Internet (from Internet Explorer) or to search the hard disk (from File Explorer). If the user presses F3, a prompt appears that informs the user that this feature has been disabled.
# 
# If you disable this policy or do not configure it, users can press F3 to search the Internet (from Internet Explorer) or the hard disk (from File Explorer).
# 
# This policy is intended for situations in which administrators do not want users to explore the Internet or the hard disk.
# 
# This policy can be used in coordination with the "File Menu: Disable Open menu option" policy (located in \User Configuration\Administrative Templates\Windows Components\Internet Explorer\Browser Menus), which prevents users from opening files by using the browser.
'Search: Disable Find Files via F3 within the browser':
  lgpo.set:
  - name: Search_NoFindFiles
  - setting: Enabled
  - policy_class: User
