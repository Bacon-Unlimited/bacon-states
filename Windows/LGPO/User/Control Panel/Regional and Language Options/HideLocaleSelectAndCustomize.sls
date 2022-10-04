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
# LOCATION: \User\Control Panel\Regional and Language Options\HideLocaleSelectAndCustomize.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting removes the regional formats interface from the Region settings control panel.
# 
# This policy setting is used only to simplify the Regional and Language Options control panel.
# 
# If you enable this policy setting, the user does not see the regional formats options. This does not prevent the user or an application from changing their user locale or user overrides programmatically.
# 
# If you disable or do not configure this policy setting, the user sees the regional formats options for changing and customizing the user locale.
Hide user locale selection and customization options:
  lgpo.set:
  - name: HideLocaleSelectAndCustomize
  - setting: Enabled
  - policy_class: User
