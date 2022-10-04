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
# LOCATION: \Computer\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Searching\TopResultPol.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE9_IE11NONWIN10
#
# This policy setting allows you to specify whether a user can browse to the website of a top result when search is enabled on the Address bar. The possible options are:
#      Disable top result search: When a user performs a search in the Address bar, a list of search results from the selected search provider is displayed in the main window.
#      Enable top result search: When a user performs a search in the Address bar, the user is directed to an external top result website determined by the search provider, if available.
# 
# If you enable this policy setting, you can choose where to direct the user after a search on the Address bar: a top-result website or a search-results webpage in the main window.
# 
# If you disable or do not configure this policy setting, the user can select their preference for this behavior. Browsing to the top-result website is the default.
Prevent configuration of top-result search on Address bar:
  lgpo.set:
  - name: TopResultPol
  - setting:
      TopResult: enum-placeholder
  - policy_class: Machine
