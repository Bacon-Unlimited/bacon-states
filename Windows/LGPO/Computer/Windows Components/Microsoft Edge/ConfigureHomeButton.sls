####### HOW TO INFO ########
## Read the doc here: https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md
## View a BaconBit here about LGPO states: https://youtu.be/alAH75jGfdA
##
#### PLACEHOLDER DATA ####
## - TEXT-PLACEHOLDER: Replace the <text-placeholder> with the appropriate value: "C:\Path\Bacon\File.jpg"
## - BOOLEAN-PLACEHOLDER: Replace the <boolean-placeholder> with either: True or False
## - DECIMAL-PLACEHOLDER: Replace the <decial-placeholder> with a number appropriate to LGPO requirements
## - ENUM-PLACEHOLDER: Replace the <enum-placeholder> value from the list of values for the LGPO setting.
##      -- View the LGPO Editor to find the available list of values.
##      -- These will be in a drop-down box in the editor.
##      -- If the text in the drop-down is only a number, then surround it in double-quotes. (https://github.com/Bacon-Unlimited/bacon-states/blob/public/Windows/LGPO/README.md#numbers-in-enum----for-states-like-compliancedeadlinesls)
#
####### LGPO DETAILS ########
# LOCATION: \Computer\Windows Components\Microsoft Edge\ConfigureHomeButton.sls
#
# SUPPORTED WINDOWS OS
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
  - policy_class: Machine
