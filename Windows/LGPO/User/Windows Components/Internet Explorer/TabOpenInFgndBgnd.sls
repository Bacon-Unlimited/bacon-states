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
# LOCATION: \User\Windows Components\Internet Explorer\TabOpenInFgndBgnd.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE7
#
# This policy setting allows you to configure how new tabs are created by default in Internet Explorer.
# 
# If you enable this policy setting, the user cannot configure how new tabs are created by default. You must specify whether tabs should open in the foreground or in the background. The user cannot open the tabs in the background by pressing Ctrl+Shift+Select or open the tabs in the foreground by pressing Ctrl+Shift+Select.
# 
# If you disable or do not configure this policy setting, the user can configure how new tabs are created by default.
Prevent configuration of new tab creation:
  lgpo.set:
  - name: TabOpenInFgndBgnd
  - setting:
      ForeGndBackGnd: enum-placeholder
  - policy_class: User
