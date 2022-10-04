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
# LOCATION: \User\Control Panel\Regional and Language Options\RestrictUILangSelect.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Win2k
#
# This policy setting restricts users to the specified language by disabling the menus and dialog box controls in the Region settings control panel. If the specified language is not installed on the target computer, the language selection defaults to English.
# 
# If you enable this policy setting, the dialog box controls in the Regional and Language Options control panel are not accessible to the logged on user. This prevents users from specifying a language different than the one used.
# 
# To enable this policy setting in Windows Vista, use the "Restricts the UI languages Windows should use for the selected user" policy setting.
# 
# If you disable or do not configure this policy setting, the logged-on user can access the dialog box controls in the Regional and Language Options control panel to select any available UI language.
Restrict selection of Windows menus and dialogs language:
  lgpo.set:
  - name: RestrictUILangSelect
  - setting:
      UILangSelect: enum-placeholder
  - policy_class: User
