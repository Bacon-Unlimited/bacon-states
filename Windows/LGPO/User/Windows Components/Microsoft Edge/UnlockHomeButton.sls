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
# LOCATION: \User\Windows Components\Microsoft Edge\UnlockHomeButton.sls
#
# SUPPORTED WINDOWS OS
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
