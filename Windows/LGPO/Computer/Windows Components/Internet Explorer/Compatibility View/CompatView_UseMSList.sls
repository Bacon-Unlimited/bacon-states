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
# LOCATION: \Computer\Windows Components\Internet Explorer\Compatibility View\CompatView_UseMSList.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy controls the website compatibility lists that Microsoft provides. The updated website lists are available on Windows Update.
# 
# If you enable this policy setting, the Microsoft-provided website lists are used during browser navigation. If a user visits a site on the compatibility lists, the pages are automatically displayed in Compatibility View.
# 
# If you disable this policy setting, the Microsoft-provided website lists are not used. Additionally, the user cannot activate the feature by using the Compatibility View Settings dialog box.
# 
# If you do not configure this policy setting, the Microsoft-provided website lists are not active. The user can activate the feature by using the Compatibility View Settings dialog box.
Include updated website lists from Microsoft:
  lgpo.set:
  - name: CompatView_UseMSList
  - setting: Enabled
  - policy_class: Machine
