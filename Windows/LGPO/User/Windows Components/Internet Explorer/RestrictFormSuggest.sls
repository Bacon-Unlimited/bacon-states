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
# LOCATION: \User\Windows Components\Internet Explorer\RestrictFormSuggest.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE5
#
# This AutoComplete feature suggests possible matches when users are filling up forms.
# 
# If you enable this setting, the user is not suggested matches when filling forms. The user cannot change it.
# 
# If you disable this setting, the user is suggested possible matches when filling forms. The user cannot change it.
# 
# If you do not configure this setting, the user has the freedom to turn on the auto-complete feature for forms.
# 
# To display this option, the users open the Internet Options dialog box, click the Contents Tab and click the Settings button.
Disable AutoComplete for forms:
  lgpo.set:
  - name: RestrictFormSuggest
  - setting: Enabled
  - policy_class: User
