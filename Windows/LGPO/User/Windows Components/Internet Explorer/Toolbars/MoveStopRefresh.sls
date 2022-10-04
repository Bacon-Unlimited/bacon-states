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
# LOCATION: \User\Windows Components\Internet Explorer\Toolbars\MoveStopRefresh.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to lock the Stop and Refresh buttons next to the Back and Forward buttons.
# 
# If you enable this policy setting, the Stop and Refresh buttons are next to the Forward and Back buttons, and the user cannot move them.
# 
# If you disable this policy setting, the Stop and Refresh buttons are next to the Address bar, and the user cannot move them.
# 
# If you do not configure this policy setting, the Stop and Refresh buttons are next to the Address bar by default, and the user can choose to move them.
Lock location of Stop and Refresh buttons:
  lgpo.set:
  - name: MoveStopRefresh
  - setting: Enabled
  - policy_class: User
