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
# LOCATION: \User\Windows Components\Microsoft Edge\ShowMessageWhenOpeningSitesInInternetExplorer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# You can configure Microsoft Edge to open a site automatically in Internet Explorer 11 and choose to display a notification before the site opens. If you want to display a notification, you must enable Configure the Enterprise Mode Site List or Send all intranets sites to Internet Explorer 11 or both.
# 
# If enabled, the notification appears on a new page. If you want users to continue in Microsoft Edge, select the Show Keep going in Microsoft Edge option from the drop-down list under Options.
# 
# If disabled or not configured, the default app behavior occurs and no additional page displays.
# 
# Default setting: Disabled or not configured
# Related policies:
# -Configure the Enterprise Mode Site List
# -Send all intranet sites to Internet Explorer 11
Show message when opening sites in Internet Explorer:
  lgpo.set:
  - name: ShowMessageWhenOpeningSitesInInternetExplorer
  - setting:
      ShowMessageWhenOpeningSitesInInternetExplorer_Dropdown: enum-placeholder
  - policy_class: User
