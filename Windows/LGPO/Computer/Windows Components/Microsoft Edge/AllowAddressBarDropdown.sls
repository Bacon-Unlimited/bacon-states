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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowAddressBarDropdown.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1703
#
# This policy setting lets you decide whether the Address bar drop-down functionality is available in Microsoft Edge. We recommend disabling this setting if you want to minimize network connections from Microsoft Edge to Microsoft services.
# 
#         Note: Disabling this setting turns off the Address bar drop-down functionality. Therefore, because search suggestions are shown in the drop-down, this setting takes precedence over the "Configure search suggestions in Address bar" setting.
# 
#         If you enable or don't configure this setting, employees can see the Address bar drop-down functionality in Microsoft Edge.
# 
#         If you disable this setting, employees won't see the Address bar drop-down functionality in Microsoft Edge. This setting also disables the user-defined setting, "Show search and site suggestions as I type".
Allow Address bar drop-down list suggestions:
  lgpo.set:
  - name: AllowAddressBarDropdown
  - setting: Enabled
  - policy_class: Machine
