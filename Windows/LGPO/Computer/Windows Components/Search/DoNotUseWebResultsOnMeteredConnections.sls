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
# LOCATION: \Computer\Windows Components\Search\DoNotUseWebResultsOnMeteredConnections.sls
#
# SUPPORTED WINDOWS OS
# WinBlueExclusive
#
# This policy setting allows you to control whether or not Search can perform queries on the web over metered connections, and if the web results are displayed in Search.
# 
# If you enable this policy setting, queries won't be performed on the web over metered connections and web results won't be displayed when a user performs a query in Search.
# 
# If you disable this policy setting, queries will be performed on the web over metered connections and web results will be displayed when a user performs a query in Search.
# 
# If you don't configure this policy setting, a user can choose whether or not Search can perform queries on the web over metered connections, and if the web results are displayed in Search.
# 
# Note: If you enable the "Don't search the web or display web results in Search" policy setting, queries won't be performed on the web over metered connections and web results won't be displayed when a user performs a query in Search.
Don't search the web or display web results in Search over metered connections:
  lgpo.set:
  - name: DoNotUseWebResultsOnMeteredConnections
  - setting: Enabled
  - policy_class: Machine
