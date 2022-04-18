# SUPPORTED_INTERNET_BROWSER_RS5
#
# The Home button loads either the default Start page, the New tab page, or a URL defined in the Set Home Button URL policy.
# 
# By default, this policy is disabled or not configured and clicking the home button loads the default Start page.
# 
# When enabled, the home button is locked down preventing your users from making changes in Microsoft Edge's UI settings. To let your users change the Microsoft Edge UI settings, enable the Unlock Home Button policy.
# 
# If Enabled AND:
# - Show home button & set to Start page is selected, clicking the home button loads the Start page.
# - Show home button & set to New tab page is selected, clicking the home button loads a New tab page.
# - Show home button & set a specific page is selected, clicking the home button loads the URL specified in the Set Home Button URL policy.
# - Hide home button is selected, the home button is hidden in Microsoft Edge.
# 
# Default setting: Disabled or not configured
# Related policies:
# - Set Home Button URL
# - Unlock Home Button
Configure Home Button:
  lgpo.set:
  - name: ConfigureHomeButton
  - setting:
      ConfigureHomeButtonDropdown: enum-placeholder
  - policy_class: User
