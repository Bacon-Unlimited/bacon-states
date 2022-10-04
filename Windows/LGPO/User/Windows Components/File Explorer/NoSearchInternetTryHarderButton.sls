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
# LOCATION: \User\Windows Components\File Explorer\NoSearchInternetTryHarderButton.sls
#
# SUPPORTED WINDOWS OS
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
