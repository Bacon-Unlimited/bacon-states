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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\AutoComplete\AutoCompleteIntegrated.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE4ONLY
#
# This policy setting let you turn off Inline AutoComplete in File Explorer. Inline AutoComplete provides suggestions for what you type by automatically completing the command inline with the closest match. By default, this functionality is turned on in File Explorer.
# 
# If you enable this policy setting, Inline AutoComplete for File Explorer is turned off. The user cannot turn it on.
# 
# If you disable this policy setting, Inline AutoComplete for File Explorer is turned on. The user cannot turn it off.
# 
# If you do not configure this policy setting, a user will have the freedom to turn on or off Inline AutoComplete for File Explorer.
Turn off inline AutoComplete in File Explorer:
  lgpo.set:
  - name: AutoCompleteIntegrated
  - setting: Enabled
  - policy_class: User
