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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\AutoComplete\RestrictWSAutoComplete.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to prevent Windows Search AutoComplete from providing results in the Internet Explorer Address bar.
# 
# Windows Search AutoComplete suggests possible matches when a user is entering a web address in the browser Address bar. This feature provides more relevant results in the browser Address bar.
# 
# If you enable this policy setting, Internet Explorer does not use Windows Search AutoComplete for providing relevant results in the Address bar. The user cannot change this setting.
# 
# If you disable this policy setting, Internet Explorer uses Windows Search AutoComplete to provide relevant results in the Address bar. The user cannot change this setting.
# 
# If you do not configure this policy setting, the user can choose to turn the Use Windows Search setting on or off.
# 
# Note: If you enable this policy setting, feeds do not appear in the Address bar. This does not affect subscribing to feeds and interacting with them through the Favorites Center.
Turn off Windows Search AutoComplete:
  lgpo.set:
  - name: RestrictWSAutoComplete
  - setting: Enabled
  - policy_class: User
