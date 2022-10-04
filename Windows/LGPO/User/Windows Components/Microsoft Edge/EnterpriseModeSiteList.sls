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
# LOCATION: \User\Windows Components\Microsoft Edge\EnterpriseModeSiteList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you configure whether to use Enterprise Mode and the Enterprise Mode Site List to address common compatibility problems with legacy apps.
# 
# If you enable this setting, Microsoft Edge looks for the Enterprise Mode Site List XML file. This file includes the sites and domains that need to be viewed using Internet Explorer 11 and Enterprise Mode.
# 
# If you disable or don't configure this setting, Microsoft Edge won't use the Enterprise Mode Site List XML file. In this case, employees might experience compatibility problems while using legacy apps.
Configure the Enterprise Mode Site List:
  lgpo.set:
  - name: EnterpriseModeSiteList
  - setting:
      EnterSiteListPrompt: text-placeholder
  - policy_class: User
