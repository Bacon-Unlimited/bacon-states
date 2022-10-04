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
# LOCATION: \User\Windows Components\Internet Explorer\Internet Settings\Advanced settings\Browsing\DisableDebugger.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to turn on your script debugger, if one is installed. Website developers use script debuggers to test programs and scripts on their webpages. You can use the script debugger to browse, edit, and debug .htm and .asp files that contain Microsoft Visual Basic Scripting Edition (VBScript) or Microsoft JScript.
# 
# If you enable this policy setting, script debugging is turned on. The user cannot turn off script debugging.
# 
# If you disable this policy setting, script debugging is turned off. The user cannot turn on script debugging.
# 
# If you do not configure this policy setting, the user can turn on or turn off script debugging.
Turn on script debugging:
  lgpo.set:
  - name: DisableDebugger
  - setting: Enabled
  - policy_class: User
