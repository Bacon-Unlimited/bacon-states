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
# LOCATION: \Computer\Windows Components\Microsoft Edge\AllowCVList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_INTERNET_BROWSER_WIN10V1607
#
# This policy setting lets you decide whether to use the Microsoft Compatibility List (a Microsoft-provided list that helps sites with known compatibility issues to display properly) in Microsoft Edge. By default, the Microsoft Compatibility List is enabled and can be viewed by visiting about:compat.
# 
# If you enable or dont configure this setting, Microsoft Edge periodically downloads the latest version of the list from Microsoft, applying the updates during browser navigation. Visiting any site on the Microsoft Compatibility List prompts the employee to use Internet Explorer 11, where the site is automatically rendered as though its in whatever version of IE is necessary for it to appear properly.
# 
# If you disable this setting, the Microsoft Compatibility List isnt used during browser navigation.
Allow Microsoft Compatibility List:
  lgpo.set:
  - name: AllowCVList
  - setting: Enabled
  - policy_class: Machine
