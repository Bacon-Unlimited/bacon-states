# SUPPORTED_INTERNET_BROWSER_RS5
#
# By default, when enabling Configure Home Button or Set Home Button URL, the home button is locked down to prevent your users from changing what page loads when clicking the home button. Use this policy to let users change the home button even when Configure Home Button or Set Home Button URL are enabled.
# 
# If enabled, the UI settings for the home button are enabled allowing your users to make changes, including hiding and showing the home button as well as configuring a custom URL.
# 
# If disabled or not configured, the UI settings for the home button are disabled preventing your users from making changes.
# 
# Default setting: Disabled or not configured
# Related policy:
# -Configure Home Button
# -Set Home Button URL
Unlock Home Button:
  lgpo.set:
  - name: UnlockHomeButton
  - setting: Enabled
  - policy_class: User
