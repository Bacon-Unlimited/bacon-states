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
# LOCATION: \User\Windows Components\Internet Explorer\Toolbars\SetCommandLabels.sls
#
# SUPPORTED WINDOWS OS
# SUPPORTED_IE8
#
# This policy setting allows you to choose among three different labels for command buttons: show all text labels, show selective text, or show only icons.
# 
# If you enable this policy setting, command buttons are displayed according to which one of the following options you choose, and the user cannot change how command buttons are displayed:
# 
# Show all text labels: All command buttons have only text.
# 
# Show selective text: Some command buttons have only text; some have icons and text.
# 
# Show only icons: All command buttons have only icons.
# 
# If you disable or do not configure this policy setting, the command buttons show selective text by default, and the user can change this.
Customize command labels:
  lgpo.set:
  - name: SetCommandLabels
  - setting:
      CommandLabelOptions: enum-placeholder
  - policy_class: User
