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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\ScriptErrorCache.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting specifies whether to display script errors when a page does not appear properly because of problems with its scripting. This feature is off by default, but it is useful to developers when they are testing webpages.
# 
# If you enable this policy setting, the user is shown script errors when a page does not appear properly because of problems with its scripting. The user cannot change this policy setting.
# 
# If you disable this policy setting, the user is not shown script errors when a page does not appear properly because of problems with its scripting. The user cannot change this policy setting.
# 
# If you do not configure this policy setting, the user can turn on or turn off the display of script errors.
Turn on the display of script errors:
  lgpo.set:
  - name: ScriptErrorCache
  - setting: Enabled
  - policy_class: User