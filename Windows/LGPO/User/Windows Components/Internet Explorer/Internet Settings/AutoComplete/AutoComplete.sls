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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\AutoComplete\AutoComplete.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to turn on inline AutoComplete in Internet Explorer and File Explorer. The AutoComplete feature provides suggestions for what the user types by automatically completing the address or command with the closest match.
# 
# If you enable this policy setting, inline AutoComplete is turned on. The user cannot turn it off.
# 
# If you disable this policy setting, inline AutoComplete is turned off. The user cannot turn it on.
# 
# If you do not configure this policy setting, the user can turn on or turn off inline AutoComplete.
# 
# By default, inline AutoComplete is turned off for Windows Vista, Windows 7, Internet Explorer 7, and Internet Explorer 8. By default, inline AutoComplete is turned on for Internet Explorer 9.
Turn on inline AutoComplete:
  lgpo.set:
  - name: AutoComplete
  - setting: Enabled
  - policy_class: User
