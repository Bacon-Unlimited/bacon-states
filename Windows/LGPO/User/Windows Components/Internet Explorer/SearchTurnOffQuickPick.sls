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
# LOCATION: \User\Windows Components\Internet Explorer\SearchTurnOffQuickPick.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8ONLY
#
# This policy setting allows you to prevent the quick pick menu from appearing when a user clicks in the Search box.
# 
# If you enable this policy setting, when a user clicks in the Search box, the quick pick menu does not appear until the user starts typing.
# 
# If you disable or do not configure this policy setting, when a user clicks in the Search box, the quick pick menu appears.
Turn off the quick pick menu:
  lgpo.set:
  - name: SearchTurnOffQuickPick
  - setting: Enabled
  - policy_class: User
