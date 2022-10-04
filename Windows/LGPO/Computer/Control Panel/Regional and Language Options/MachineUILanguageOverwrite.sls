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
# LOCATION: \Computer\Control Panel\Regional and Language Options\MachineUILanguageOverwrite.sls
#
# SUPPORTED WINDOWS OS
# windows:SUPPORTED_WindowsVista
#
# This policy setting controls which UI language is used for computers with more than one UI language installed.
# 
# If you enable this policy setting, the UI language of Windows menus and dialogs for systems with more than one language is restricted to a specified language. If the specified language is not installed on the target computer or you disable this policy setting, the language selection defaults to the language selected by the local administrator.
# 
# If you disable or do not configure this policy setting, there is no restriction of a specific language used for the Windows menus and dialogs.
Force selected system UI language to overwrite the user UI language:
  lgpo.set:
  - name: MachineUILanguageOverwrite
  - setting: Enabled
  - policy_class: Machine
