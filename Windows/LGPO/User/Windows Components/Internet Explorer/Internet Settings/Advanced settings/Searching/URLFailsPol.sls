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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Searching\URLFailsPol.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether the user can conduct a search on the Address bar.
# 
# If you enable this policy setting, you must specify which of the following actions applies to searches on the Address bar. The user cannot change the specified action.
# 
#      Do not search from the Address bar: The user cannot use the Address bar for searches. The user can still perform searches on the Search bar by clicking the Search button.
#      Display the results in the main window: When the user searches on the Address bar, the list of search results is displayed in the main window.
# 
# If you disable or do not configure this policy setting, the user can specify what action applies to searches on the Address bar.
Prevent configuration of search on Address bar:
  lgpo.set:
  - name: URLFailsPol
  - setting:
      URLFails: enum-placeholder
  - policy_class: User
