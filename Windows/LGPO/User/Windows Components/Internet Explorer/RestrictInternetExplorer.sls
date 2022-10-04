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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictInternetExplorer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE11WIN10_1607
#
# This setting lets you decide whether to open all sites not included in the Enterprise Mode Site List in Microsoft Edge. If you use this setting, you must also turn on the Administrative Templates\Windows Components\Internet Explorer\Use the Enterprise Mode IE website list policy setting and you must include at least one site in the Enterprise Mode Site List.
# 
# Enabling this setting automatically opens all sites not included in the Enterprise Mode Site List in Microsoft Edge.
# 
# Disabling, or not configuring this setting, opens all sites based on the currently active browser.
# 
# Note: If you've also enabled the Administrative Templates\Windows Components\Microsoft Edge\Send all intranet sites to Internet Explorer 11 policy setting, then all intranet sites will continue to open in Internet Explorer 11.
Send all sites not included in the Enterprise Mode Site List to Microsoft Edge.:
  lgpo.set:
  - name: RestrictInternetExplorer
  - setting: Enabled
  - policy_class: User
