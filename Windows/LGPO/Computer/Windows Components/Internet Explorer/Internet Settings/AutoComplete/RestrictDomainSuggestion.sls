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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Settings\AutoComplete\RestrictDomainSuggestion.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE10
#
# This policy setting turns off URL Suggestions. URL Suggestions allow users to autocomplete URLs in the address bar based on common URLs. The list of common URLs is stored locally and is updated once a month. No user data is sent over the internet by this feature.
# 
# If you enable this policy setting, URL Suggestions will be turned off. Users will not be able to turn on URL Suggestions.
# 
# If you disable this policy setting, URL Suggestions will be turned on. Users will not be able to turn off URL Suggestions.
# 
# If you do not configure this policy setting, URL Suggestions will be turned on. Users will be able to turn on or turn off URL Suggestions in the Internet Options dialog. By default, URL Suggestions are turned on.
Turn off URL Suggestions:
  lgpo.set:
  - name: RestrictDomainSuggestion
  - setting: Enabled
  - policy_class: Machine
