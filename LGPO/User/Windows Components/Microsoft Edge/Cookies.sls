# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This setting lets you configure how to work with cookies.
# 
# If you enable this setting, you must also decide whether to:
#      Allow all cookies (default): Allows all cookies from all websites.
#      Block all cookies: Blocks all cookies from all websites.
#      Block only 3rd-party cookies: Blocks only cookies from 3rd-party websites.
# 
# If you disable or don't configure this setting, all cookies are allowed from all sites.
Configure cookies:
  lgpo.set:
  - name: Cookies
  - setting:
      CookiesListBox: enum-placeholder
  - policy_class: User
