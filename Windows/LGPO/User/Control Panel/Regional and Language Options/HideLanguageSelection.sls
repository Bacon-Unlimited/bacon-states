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
# LOCATION: \User\Control Panel\Regional and Language Options\HideLanguageSelection.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the option to change the user's menus and dialogs (UI) language from the Language and Regional Options control panel.
# 
# This policy setting is used only to simplify the Regional Options control panel.
# 
# If you enable this policy setting, the user does not see the option for changing the UI language. This does not prevent the user or an application from changing the UI language programmatically.
# 
# If you disable or do not configure this policy setting, the user sees the option for changing the UI language.
# 
# Note: Even if a user can see the option to change the UI language, other policy settings can prevent them from changing their UI language.
Hide the select language group options:
  lgpo.set:
  - name: HideLanguageSelection
  - setting: Enabled
  - policy_class: User
