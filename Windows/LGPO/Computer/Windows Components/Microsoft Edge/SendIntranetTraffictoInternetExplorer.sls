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
# LOCATION: \Computer\Windows Components\Microsoft Edge\SendIntranetTraffictoInternetExplorer.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10
#
# This policy setting lets you decide whether your intranet sites should all open using Internet Explorer 11. This setting should only be used if there are known compatibility problems with Microsoft Edge.
# 
# If you enable this setting, all intranet sites are automatically opened using Internet Explorer 11.
# 
# If you disable or don't configure this setting, all intranet sites are automatically opened using Microsoft Edge.
Send all intranet sites to Internet Explorer 11:
  lgpo.set:
  - name: SendIntranetTraffictoInternetExplorer
  - setting: Enabled
  - policy_class: Machine
