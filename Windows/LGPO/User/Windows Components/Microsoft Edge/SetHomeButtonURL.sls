# SUPPORTED_INTERNET_BROWSER_RS5
#
# The home button can be configured to load a custom URL when your user clicks the home button.
# 
# If enabled, or configured, and the Configure Home Button policy is enabled, and the Show home button & set a specific page is selected, a custom URL loads when your user clicks the home button.
# 
# Default setting: Blank or not configured
# Related policy: Configure Home Button
Set Home Button URL:
  lgpo.set:
  - name: SetHomeButtonURL
  - setting:
      SetHomeButtonURLPrompt: text-placeholder
  - policy_class: User
