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
# LOCATION: \User\Windows Components\Tablet PC\Input Panel\AutoComplete_1.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_Windows7ToVista
#
# Turns off the integration of application auto complete lists with Tablet PC Input Panel in applications where this behavior is available.
# 
# Tablet PC Input Panel is a Tablet PC accessory that enables you to use handwriting or an on-screen keyboard to enter text, symbols, numbers, or keyboard shortcuts.
# 
# If you enable this policy, application auto complete lists will never appear next to Input Panel. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you disable this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will not be able to configure this setting in the Input Panel Options dialog box.
# 
# If you do not configure this policy, application auto complete lists will appear next to Input Panel in applications where the functionality is available. Users will be able to configure this setting on the Text completion tab in Input Panel Options.
Turn off AutoComplete integration with Input Panel:
  lgpo.set:
  - name: AutoComplete_1
  - setting: Enabled
  - policy_class: User
